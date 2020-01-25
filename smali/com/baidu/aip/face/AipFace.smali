.class public Lcom/baidu/aip/face/AipFace;
.super Lcom/baidu/aip/client/BaseClient;
.source "AipFace.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aip/client/BaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addGroupUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "src_group_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "group_id"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "uid"

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/adduser"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public addUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    invoke-static {p4}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/aip/face/AipFace;->addUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public addUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "user_info"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "group_id"

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/add"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroupUser(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
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

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "uid"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/deleteuser"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public deleteUser(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/delete"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public detect(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/face/AipFace;->detect([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public detect([BLjava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/detect"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public faceverify(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/face/AipFace;->faceverify([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public faceverify([BLjava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceverify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getGroupList(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/getlist"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getGroupUsers(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/group/getusers"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/get"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public identifyUser(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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
    invoke-static {p2}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/face/AipFace;->identifyUser(Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public identifyUser(Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/identify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public livenessVerify(Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
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

    :try_start_0
    invoke-static {p1}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/aip/face/AipFace;->livenessVerify([BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public livenessVerify([BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceverify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public match(Ljava/util/List;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/baidu/aip/face/AipFace;->match([[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public match([[BLjava/util/HashMap;)Lorg/json/JSONObject;
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

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

    invoke-virtual {v0, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_1
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/match"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public multiIdentify(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
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
    invoke-static {p2}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/aip/face/AipFace;->multiIdentify(Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public multiIdentify(Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "group_id"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/multi-identify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public personVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/aip/face/AipFace;->personVerify([BLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;

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

.method public personVerify([BLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
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

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-static {p1}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "id_card_number"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "name"

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/person/verify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    invoke-static {p4}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/aip/face/AipFace;->updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "user_info"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "group_id"

    invoke-virtual {v0, p1, p3}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/faceset/user/update"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public verifyUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    invoke-static {p3}, Lcom/baidu/aip/util/Util;->readFileByBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/aip/face/AipFace;->verifyUser(Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;

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

.method public verifyUser(Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/baidu/aip/http/AipRequest;

    invoke-direct {v0}, Lcom/baidu/aip/http/AipRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->preOperation(Lcom/baidu/aip/http/AipRequest;)V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "group_id"

    invoke-virtual {v0, p1, p2}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/baidu/aip/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "image"

    invoke-virtual {v0, p2, p1}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/baidu/aip/http/AipRequest;->addBody(Ljava/util/HashMap;)V

    :cond_0
    const-string p1, "https://aip.baidubce.com/rest/2.0/face/v2/verify"

    invoke-virtual {v0, p1}, Lcom/baidu/aip/http/AipRequest;->setUri(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->postOperation(Lcom/baidu/aip/http/AipRequest;)V

    invoke-virtual {p0, v0}, Lcom/baidu/aip/face/AipFace;->requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
