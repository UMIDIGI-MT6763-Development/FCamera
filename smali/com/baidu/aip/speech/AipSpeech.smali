.class public Lcom/baidu/aip/speech/AipSpeech;
.super Lcom/baidu/aip/client/BaseClient;
.source "AipSpeech.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/client/BaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asr(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/aip/speech/AipSpeech;->asr([BLjava/lang/String;ILjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public asr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/speech/AipSpeech;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    iget-object v1, p0, Lcom/baidu/aip/speech/AipSpeech;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/baidu/aip/util/AipClientConst;->OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "No permission to access data"

    invoke-static {p1, p2}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "format"

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "rate"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "channel"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-static {p1, p3}, Lcom/baidu/aip/util/SignUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cuid"

    invoke-virtual {v0, p3, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "token"

    iget-object p3, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "callback"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_1

    invoke-virtual {v0, p5}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_1
    const-string p1, "http://vop.baidu.com/server_api"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/speech/AipSpeech;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public asr([BLjava/lang/String;ILjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/speech/AipSpeech;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    iget-object v1, p0, Lcom/baidu/aip/speech/AipSpeech;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/baidu/aip/util/AipClientConst;->OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "No permission to access data"

    invoke-static {p1, p2}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "speech"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "rate"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "channel"

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-static {p2, p3}, Lcom/baidu/aip/util/SignUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "cuid"

    invoke-virtual {v0, p3, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "token"

    iget-object p3, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "len"

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_1
    const-string p1, "http://vop.baidu.com/server_api"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/speech/AipSpeech;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public synthesis(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)Lcom/baidu/aip/speech/TtsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baidu/aip/speech/TtsResponse;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/speech/AipSpeech;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    iget-object v1, p0, Lcom/baidu/aip/speech/AipSpeech;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/baidu/aip/speech/TtsResponse;

    invoke-direct {p1}, Lcom/baidu/aip/speech/TtsResponse;-><init>()V

    sget-object p2, Lcom/baidu/aip/util/AipClientConst;->OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, "No permission to access data"

    invoke-static {p2, p3}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/aip/speech/TtsResponse;->setResult(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-string v1, "tex"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "lan"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "tok"

    iget-object p2, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "ctp"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/baidu/aip/speech/AipSpeech;->accessToken:Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Lcom/baidu/aip/util/SignUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "cuid"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_1
    const-string p1, "http://tsn.baidu.com/text2audio"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    new-instance p1, Lcom/baidu/aip/speech/TtsResponse;

    invoke-direct {p1}, Lcom/baidu/aip/speech/TtsResponse;-><init>()V

    invoke-static {v0}, Lcom/baidu/aip/http/AipHttpClient;->post(Lcom/baidu/aip/http/AipRequest;)Lcom/baidu/aip/http/AipResponse;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, -0x1

    const-string p3, "null response from server"

    invoke-static {p2, p3}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/aip/speech/TtsResponse;->setResult(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getHeader()Ljava/util/Map;

    move-result-object p3

    const-string p4, "content-type"

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getHeader()Ljava/util/Map;

    move-result-object p3

    const-string p4, "content-type"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p4, "json"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getBodyStr()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/baidu/aip/speech/TtsResponse;->setResult(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getBody()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/aip/speech/TtsResponse;->setData([B)V

    goto :goto_0

    :cond_4
    sget-object p4, Lcom/baidu/aip/speech/AipSpeech;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synthesis get no content-type in header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    sget-object p3, Lcom/baidu/aip/speech/AipSpeech;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "synthesis response status: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getStatus()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getBodyStr()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/baidu/aip/speech/TtsResponse;->setResult(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p2}, Lcom/baidu/aip/http/AipResponse;->getBody()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/aip/speech/TtsResponse;->setData([B)V

    :goto_0
    return-object p1
.end method
