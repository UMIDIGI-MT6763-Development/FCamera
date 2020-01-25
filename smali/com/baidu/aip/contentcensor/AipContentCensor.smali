.class public Lcom/baidu/aip/contentcensor/AipContentCensor;
.super Lcom/baidu/aip/client/BaseClient;
.source "AipContentCensor.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/client/BaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkImgFormat([BLjava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-static {p1}, Lcom/baidu/aip/util/ImageUtil;->getImageFormatByBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/baidu/aip/error/AipError;->SUCCESS:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->UNSUPPORTED_IMAGE_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private checkParam([B)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p1}, Lcom/baidu/aip/util/ImageUtil;->getImageFormatByBytes([B)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/baidu/aip/contentcensor/ContentCensorConsts;->ANTIPORN_SUPPORT_IMAGE_FORMAT:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/baidu/aip/error/AipError;->UNSUPPORTED_IMAGE_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->SUCCESS:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private faceAuditHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aip/http/AipRequest;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string p2, "https://aip.baidubce.com/rest/2.0/solution/v1/face_audit"

    invoke-virtual {p1, p2}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private imageCensorCombHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aip/http/AipRequest;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p2, "scenes"

    invoke-virtual {p1, p2, v0}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p2, "https://aip.baidubce.com/api/v1/solution/direct/img_censor"

    invoke-virtual {p1, p2}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    sget-object p2, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {p1, p2}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    invoke-virtual {p1, p2, p3}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private imageCensorUserDefinedHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aip/http/AipRequest;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "https://aip.baidubce.com/rest/2.0/solution/v1/img_censor/user_defined"

    invoke-virtual {p1, p2}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public antiPorn(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->antiPorn([B)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiPorn([B)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-direct {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->checkParam([B)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "error_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiPornGif(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->antiPornGif([B)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiPornGif([B)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    const-string v1, "gif"

    invoke-direct {p0, p1, v1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->checkImgFormat([BLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "error_code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "https://aip.baidubce.com/rest/2.0/antiporn/v1/detect_gif"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiSpam(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/antispam/v2/spam"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiTerror(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/aip/contentcensor/AipContentCensor;->antiTerror([B)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public antiTerror([B)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "https://aip.baidubce.com/rest/2.0/antiterror/v1/detect"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public faceAudit(Ljava/util/List;Lcom/baidu/aip/contentcensor/EImgType;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/aip/contentcensor/EImgType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/aip/contentcensor/EImgType;->FILE:Lcom/baidu/aip/contentcensor/EImgType;

    if-ne p2, v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [[B

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/baidu/aip/contentcensor/AipContentCensor;->faceAudit([[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

    :cond_1
    new-instance p2, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {p2}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    const-string v0, "imgUrls"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v1, 0x2c

    invoke-static {p1, v1}, Lcom/baidu/aip/util/Util;->mkString(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/baidu/aip/contentcensor/AipContentCensor;->faceAuditHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public faceAudit([[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v1, 0x2c

    invoke-static {p1, v1}, Lcom/baidu/aip/util/Util;->mkString(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "images"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/baidu/aip/contentcensor/AipContentCensor;->faceAuditHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public imageCensorComb(Ljava/lang/String;Lcom/baidu/aip/contentcensor/EImgType;Ljava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/aip/contentcensor/EImgType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/aip/contentcensor/EImgType;->FILE:Lcom/baidu/aip/contentcensor/EImgType;

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorComb([BLjava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {p2}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    const-string v0, "imgUrl"

    invoke-virtual {p2, v0, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorCombHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public imageCensorComb([BLjava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorCombHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public imageCensorUserDefined(Ljava/lang/String;Lcom/baidu/aip/contentcensor/EImgType;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/aip/contentcensor/EImgType;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/aip/contentcensor/EImgType;->FILE:Lcom/baidu/aip/contentcensor/EImgType;

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorUserDefined([BLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {p2}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    const-string v0, "imgUrl"

    invoke-virtual {p2, v0, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorUserDefinedHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public imageCensorUserDefined([BLjava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/aip/contentcensor/AipContentCensor;->imageCensorUserDefinedHelper(Lcom/baidu/aip/http/AipRequest;Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public report(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "feedback"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "https://aip.baidubce.com/rpc/2.0/feedback/v1/report"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/aip/http/EBodyFormat;->RAW_JSON:Lcom/baidu/aip/http/EBodyFormat;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setBodyFormat(Lcom/baidu/aip/http/EBodyFormat;)V

    const-string p1, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v0, p1, v1}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/contentcensor/AipContentCensor;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
