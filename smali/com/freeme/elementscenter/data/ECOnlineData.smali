.class public Lcom/freeme/elementscenter/data/ECOnlineData;
.super Landroid/os/AsyncTask;
.source "ECOnlineData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/freeme/elementscenter/ui/ECItemData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;

.field private mPageItemTypeCode:I

.field private mTypeCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mTypeCode:I

    iput p2, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mPageItemTypeCode:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECOnlineData;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "head"

    const/4 v5, 0x1

    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/freeme/elementscenter/data/NetworkUtil;->buildHeadData(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "body"

    const/4 v6, 0x0

    aget-object v7, p1, v6

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://service-fomultimedia.yy845.com:2860"

    invoke-static {v4, v3}, Lcom/freeme/elementscenter/data/NetworkUtil;->accessNetworkByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mylog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Lcom/freeme/elementscenter/data/ECOnlineData;->mTypeCode:I

    const v7, 0x186a1

    if-eq v4, v7, :cond_3

    const v7, 0x18705

    if-eq v4, v7, :cond_2

    const v7, 0x18769

    if-eq v4, v7, :cond_1

    const v7, 0x187cd

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "jigsawList"

    goto :goto_0

    :cond_1
    const-string v0, "poseList"

    goto :goto_0

    :cond_2
    const-string v0, "childrenRingList"

    goto :goto_0

    :cond_3
    const-string v0, "watermarkList"

    :goto_0
    invoke-static {v3, v0}, Lcom/freeme/elementscenter/data/ResultUtil;->splitElementListData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move v2, v6

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "dnUrlx"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "dnUrlc"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v9, "fileSizex"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "fileSizec"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const-string v11, "dnUrlp"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const-string v12, "dnUrls"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const-string v13, "name"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-string v14, "id"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string v15, "code"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v5, "prompt"

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    const-string v6, "color"

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 p1, v0

    const/4 v0, 0x7

    if-eq v15, v0, :cond_5

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v15, 0x9

    if-ne v0, v15, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v16, v2

    move-object/from16 v17, v3

    const/4 v2, 0x0

    const/4 v15, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :cond_5
    :goto_2
    :try_start_3
    const-string v0, "#"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v16, v2

    move-object/from16 v17, v3

    const/4 v2, 0x0

    const/4 v15, 0x1

    :try_start_4
    invoke-virtual {v6, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_6

    :try_start_5
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, v17

    goto/16 :goto_5

    :cond_6
    :try_start_6
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_3
    new-instance v3, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-direct {v3}, Lcom/freeme/elementscenter/ui/ECItemData;-><init>()V

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    iget v6, v1, Lcom/freeme/elementscenter/data/ECOnlineData;->mTypeCode:I

    iput v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mTypeCode:I

    iget v6, v1, Lcom/freeme/elementscenter/data/ECOnlineData;->mPageItemTypeCode:I

    iput v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPageItemTypeCode:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/freeme/elementscenter/data/ECUtil;->utf8UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mThumbnailUrl:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/freeme/elementscenter/data/ECUtil;->utf8UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPreviewUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freeme/elementscenter/data/ECUtil;->utf8UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPrimitiveUrl:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freeme/elementscenter/data/ECUtil;->utf8UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPriThumbnailUrl:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPriFileSize:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPriThumbnailFileSize:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPrompt:Ljava/lang/String;

    iput v0, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mColor:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v4, v17

    :try_start_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v0, v16, 0x1

    move v6, v2

    move-object v3, v4

    move v5, v15

    move v2, v0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_4

    :cond_7
    move-object v4, v3

    move-object v2, v4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v4, v3

    :goto_4
    move-object v2, v4

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECOnlineData doInBackground exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECOnlineData;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mListener:Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mTypeCode:I

    iget v2, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mPageItemTypeCode:I

    invoke-interface {v0, v1, v2, p1}, Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;->onDataReady(IILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setOnlineDataReadyListener(Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/data/ECOnlineData;->mListener:Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;

    return-void
.end method
