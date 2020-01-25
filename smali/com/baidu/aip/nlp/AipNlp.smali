.class public Lcom/baidu/aip/nlp/AipNlp;
.super Lcom/baidu/aip/client/BaseClient;
.source "AipNlp.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/client/BaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commentTag(Ljava/lang/String;Lcom/baidu/aip/nlp/ESimnetType;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/aip/nlp/ESimnetType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "type"

    invoke-virtual {p2}, Lcom/baidu/aip/nlp/ESimnetType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v2/comment_tag"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public depParser(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/depparser"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public dnnlmCn(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v2/dnnlm_cn"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public keyword(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/keyword"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public lexer(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public lexerCustom(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/lexer_custom"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public sentimentClassify(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/sentiment_classify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public simnet(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "text_1"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "text_2"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v2/simnet"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public topic(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v1/topic"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public wordEmbedding(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_vec"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public wordSimEmbedding(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "word_1"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "word_2"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rpc/2.0/nlp/v2/word_emb_sim"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    const-string p1, "Content-Encoding"

    const-string p2, "GBK"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/nlp/AipNlp;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
