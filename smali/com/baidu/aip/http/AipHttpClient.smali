.class public Lcom/baidu/aip/http/AipHttpClient;
.super Ljava/lang/Object;
.source "AipHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Lcom/baidu/aip/http/AipRequest;)Lcom/baidu/aip/http/AipResponse;
    .locals 11

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getBodyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/baidu/aip/http/AipResponse;

    invoke-direct {v3}, Lcom/baidu/aip/http/AipResponse;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getParams()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "%s?%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getParamStr()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getConfig()Lcom/baidu/aip/util/AipClientConfiguration;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getConfig()Lcom/baidu/aip/util/AipClientConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/aip/util/AipClientConfiguration;->getProxy()Ljava/net/Proxy;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getConfig()Lcom/baidu/aip/util/AipClientConfiguration;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getConfig()Lcom/baidu/aip/util/AipClientConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/aip/util/AipClientConfiguration;->getConnectionTimeoutMillis()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/baidu/aip/http/AipRequest;->getConfig()Lcom/baidu/aip/util/AipClientConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/aip/util/AipClientConfiguration;->getSocketTimeoutMillis()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_2
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/aip/http/AipResponse;->setHeader(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lcom/baidu/aip/http/AipResponse;->setStatus(I)V

    invoke-virtual {v3, v0}, Lcom/baidu/aip/http/AipResponse;->setCharset(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_4

    :try_start_2
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v3

    :cond_4
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_4
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/aip/http/AipResponse;->setBody([B)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return-object v3

    :catchall_0
    move-exception v0

    move-object v10, v4

    move-object v4, p0

    move-object p0, v0

    move-object v0, v10

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object v10, v4

    move-object v4, p0

    move-object p0, v0

    move-object v0, v10

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v10, v4

    move-object v4, p0

    move-object p0, v0

    move-object v0, v10

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v10, v4

    move-object v4, p0

    move-object p0, v0

    move-object v0, v10

    goto :goto_b

    :catchall_1
    move-exception p0

    move-object v0, v4

    goto :goto_e

    :catch_6
    move-exception p0

    move-object v0, v4

    :goto_7
    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz v0, :cond_b

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_d

    :catch_8
    move-exception p0

    move-object v0, v4

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_9

    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    :catch_9
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    if-eqz v0, :cond_b

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_d

    :catch_a
    move-exception p0

    move-object v0, v4

    :goto_b
    :try_start_c
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v4, :cond_a

    :try_start_d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_c

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_c
    if-eqz v0, :cond_b

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_d

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_d
    return-object v3

    :catchall_2
    move-exception p0

    :goto_e
    if-eqz v4, :cond_c

    :try_start_f
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_f

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_f
    if-eqz v0, :cond_d

    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_10
    throw p0
.end method
