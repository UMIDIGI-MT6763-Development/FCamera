.class public Lorg/lasque/tusdk/core/http/JsonStreamerEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpEntity;


# static fields
.field private static final a:Ljava/lang/UnsupportedOperationException;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:Lorg/lasque/tusdk/core/http/HttpHeader;

.field private static final i:Lorg/lasque/tusdk/core/http/HttpHeader;


# instance fields
.field private final j:[B

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lorg/lasque/tusdk/core/http/HttpHeader;

.field private final m:[B

.field private final n:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a:Ljava/lang/UnsupportedOperationException;

    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->b:[B

    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->c:[B

    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->d:[B

    const-string v0, "name"

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->e:[B

    const-string v0, "type"

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->f:[B

    const-string v0, "contents"

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->g:[B

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->h:Lorg/lasque/tusdk/core/http/HttpHeader;

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->i:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->j:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->k:Ljava/util/Map;

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->n:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->i:Lorg/lasque/tusdk/core/http/HttpHeader;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->l:Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->m:[B

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x2c

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    sget-object v1, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->f:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    sget-object p2, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->g:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;)V
    .locals 8

    iget-object v0, p2, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object p2, p2, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p2, Lorg/lasque/tusdk/core/http/Base64OutputStream;

    const/16 v3, 0x12

    invoke-direct {p2, p1, v3}, Lorg/lasque/tusdk/core/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    const-wide/16 v3, 0x0

    :goto_0
    iget-object v5, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->j:[B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->j:[B

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7, v5}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->n:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v5, v3, v4, v0, v1}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-void
.end method

.method private a(Ljava/io/OutputStream;Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;)V
    .locals 4

    iget-object v0, p2, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/core/http/Base64OutputStream;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lorg/lasque/tusdk/core/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    iget-object v1, p2, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->j:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->j:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/lasque/tusdk/core/http/Base64OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;)V

    iget-boolean p1, p2, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz p1, :cond_1

    iget-object p1, p2, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :cond_1
    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 8

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->d:[B

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_6

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_5

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1

    const/16 v5, 0x9f

    if-le v4, v5, :cond_3

    :cond_1
    const/16 v5, 0x2000

    if-lt v4, v5, :cond_2

    const/16 v5, 0x20ff

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_0
    const-string v4, "\\r"

    goto :goto_3

    :pswitch_1
    const-string v4, "\\f"

    goto :goto_3

    :pswitch_2
    const-string v4, "\\n"

    goto :goto_3

    :pswitch_3
    const-string v4, "\\t"

    goto :goto_3

    :pswitch_4
    const-string v4, "\\b"

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v4, "\\\\"

    goto :goto_3

    :cond_6
    const-string v4, "\\\""

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public consumeContent()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->l:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->h:Lorg/lasque/tusdk/core/http/HttpHeader;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13

    if-eqz p1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->l:Lorg/lasque/tusdk/core/http/HttpHeader;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, p1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v2

    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x7d

    if-lez v4, :cond_14

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    move v7, v6

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x3a

    const/4 v10, 0x1

    if-eqz v8, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/2addr v7, v10

    const/16 v10, 0x2c

    :try_start_0
    iget-object v11, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->k:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write(I)V

    if-nez v11, :cond_2

    sget-object v8, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->d:[B

    :goto_1
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_4

    :cond_2
    instance-of v8, v11, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;

    if-nez v8, :cond_d

    instance-of v9, v11, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;

    if-eqz v9, :cond_3

    goto/16 :goto_2

    :cond_3
    instance-of v8, v11, Lorg/lasque/tusdk/core/http/JsonValueInterface;

    if-eqz v8, :cond_4

    check-cast v11, Lorg/lasque/tusdk/core/http/JsonValueInterface;

    invoke-interface {v11}, Lorg/lasque/tusdk/core/http/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v8

    goto :goto_1

    :cond_4
    instance-of v8, v11, Lorg/json/JSONObject;

    if-eqz v8, :cond_5

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_1

    :cond_5
    instance-of v8, v11, Lorg/json/JSONArray;

    if-eqz v8, :cond_6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_1

    :cond_6
    instance-of v8, v11, Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->b:[B

    goto :goto_1

    :cond_7
    sget-object v8, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->c:[B

    goto :goto_1

    :cond_8
    instance-of v8, v11, Ljava/lang/Long;

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_1

    :cond_9
    instance-of v8, v11, Ljava/lang/Double;

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto/16 :goto_1

    :cond_a
    instance-of v8, v11, Ljava/lang/Float;

    if-eqz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto/16 :goto_1

    :cond_b
    instance-of v8, v11, Ljava/lang/Integer;

    if-eqz v8, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/lang/String;)[B

    move-result-object v8

    goto/16 :goto_1

    :cond_d
    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    if-eqz v8, :cond_e

    check-cast v11, Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;

    invoke-direct {p0, p1, v11}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;Lorg/lasque/tusdk/core/http/RequestParams$FileWrapper;)V

    goto :goto_3

    :cond_e
    check-cast v11, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;

    invoke-direct {p0, p1, v11}, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->a(Ljava/io/OutputStream;Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;)V

    :goto_3
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object v8, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->m:[B

    if-nez v8, :cond_f

    if-ge v7, v4, :cond_1

    :cond_f
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->m:[B

    if-nez v1, :cond_10

    if-ge v7, v4, :cond_11

    :cond_10
    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    :cond_11
    throw v0

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/JsonStreamerEntity;->m:[B

    if-eqz v0, :cond_13

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_13
    const-string v0, "Uploaded JSON in %s seconds"

    new-array v1, v10, [Ljava/lang/Object;

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Output stream cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
