.class public Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;
.super Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fileId:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public id:J
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "id"
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "key"
    .end annotation
.end field

.field public progress:F
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "progress"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lorg/lasque/tusdk/core/utils/json/DataBase;
        value = "status"
    .end annotation
.end field

.field public type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->status:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->getType(I)Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatusChangeData()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "fun"

    const-string v2, "statusChange"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "item"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->buildJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StickerLocalPackage getAllDatas"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public localDownloadPath()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "tusdk_%s_%s.gsce"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileName:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppDownloadPath()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public localTempPath()Ljava/io/File;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "_download_tusdk_%s_%s.tmp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public setStatus(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->getFlag()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->status:I

    return-void
.end method
