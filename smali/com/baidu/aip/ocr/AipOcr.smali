.class public Lcom/baidu/aip/ocr/AipOcr;
.super Lcom/baidu/aip/client/BaseClient;
.source "AipOcr.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/client/BaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getTableResultHelper(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "result_type"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/get_request_result"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private tableRecSyncHelper([BJLjava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/aip/ocr/AipOcr;->tableRecognitionAsync([BLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, p2

    if-lez v4, :cond_1

    sget-object p1, Lcom/baidu/aip/error/AipError;->ASYNC_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/baidu/aip/ocr/AipOcr;->getTableResultHelper(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "ret_code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    return-object v4

    :cond_3
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public accurateGeneral(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->accurateGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public accurateGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public bankcard(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->bankcard([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public bankcard([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/bankcard"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public basicAccurateGeneral(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->basicAccurateGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public basicAccurateGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/accurate_basic"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public basicGeneral(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->basicGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public basicGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public basicGeneralUrl(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public businessLicense(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->businessLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public businessLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/business_license"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public custom(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/ocr/AipOcr;->custom([BLjava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;

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

.method public custom([BLjava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "templateSign"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/solution/v1/iocr/recognise"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public drivingLicense(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->drivingLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public drivingLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/driving_license"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public enhancedGeneral(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->enhancedGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public enhancedGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_enhanced"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public enhancedGeneralUrl(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general_enhanced"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public form(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->form([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public form([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/form"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public general(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->general([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public general([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public generalUrl(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/general"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getTableRecognitionExcelResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "excel"

    invoke-direct {p0, p1, v0}, Lcom/baidu/aip/ocr/AipOcr;->getTableResultHelper(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getTableRecognitionJsonResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "json"

    invoke-direct {p0, p1, v0}, Lcom/baidu/aip/ocr/AipOcr;->getTableResultHelper(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public idcard(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/ocr/AipOcr;->idcard([BLjava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;

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

.method public idcard([BLjava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "id_card_side"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/idcard"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public plateLicense(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->plateLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public plateLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/license_plate"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public receipt(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->receipt([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public receipt([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/receipt"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public tableRecognitionAsync(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->tableRecognitionAsync([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public tableRecognitionAsync([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/request"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public tableRecognizeToExcelUrl(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/ocr/AipOcr;->tableRecognizeToExcelUrl([BJ)Lorg/json/JSONObject;

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

.method public tableRecognizeToExcelUrl([BJ)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "excel"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/aip/ocr/AipOcr;->tableRecSyncHelper([BJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public tableRecognizeToJson(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/ocr/AipOcr;->tableRecognizeToJson([BJ)Lorg/json/JSONObject;

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

.method public tableRecognizeToJson([BJ)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "json"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/aip/ocr/AipOcr;->tableRecSyncHelper([BJLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public tableResultGet(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/solution/v1/form_ocr/get_request_result"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public vehicleLicense(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->vehicleLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public vehicleLicense([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/vehicle_license"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public webImage(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/ocr/AipOcr;->webImage([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public webImage([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/webimage"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public webImageUrl(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/ocr/v1/webimage"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/ocr/AipOcr;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
