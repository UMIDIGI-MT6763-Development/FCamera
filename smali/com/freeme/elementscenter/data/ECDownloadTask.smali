.class public Lcom/freeme/elementscenter/data/ECDownloadTask;
.super Landroid/os/AsyncTask;
.source "ECDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

.field private mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

.field private mStepCnts:I

.field private mSumBytes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/elementscenter/data/ECDownloadManager;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    iput-object p2, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    iput-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private declared-synchronized downloadFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne v2, v0, :cond_4

    const-string v0, "mylog"

    const-string v2, "HTTP_OK"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    const-string v5, "mylog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InputStream===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iget v6, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mSumBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mSumBytes:I

    iget v5, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mSumBytes:I

    iget v6, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mStepCnts:I

    mul-int/2addr v6, p3

    if-lt v5, v6, :cond_1

    new-array v5, v3, [Ljava/lang/Integer;

    iget v6, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mStepCnts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v5}, Lcom/freeme/elementscenter/data/ECDownloadTask;->publishProgress([Ljava/lang/Object;)V

    iget v5, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mStepCnts:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mStepCnts:I

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->deleteFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-object v0, p2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p2, v0

    goto :goto_7

    :catch_2
    :goto_2
    :try_start_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    if-eqz v0, :cond_6

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_3
    move-object p2, v0

    :catch_4
    if-eqz p2, :cond_6

    :goto_4
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    :goto_5
    :try_start_4
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_6
    monitor-exit p0

    return v1

    :goto_7
    if-eqz p2, :cond_7

    :try_start_5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized downloadFiles()Z
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->getFileNameByItem(Lcom/freeme/elementscenter/ui/ECItemData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v7, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget v7, v7, Lcom/freeme/elementscenter/ui/ECItemData;->mPriFileSize:I

    iget-object v8, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget v8, v8, Lcom/freeme/elementscenter/ui/ECItemData;->mPriThumbnailFileSize:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v9, v9, Lcom/freeme/elementscenter/ui/ECItemData;->mPriThumbnailUrl:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v7}, Lcom/freeme/elementscenter/data/ECDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v9, v9, Lcom/freeme/elementscenter/ui/ECItemData;->mPrimitiveUrl:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v7}, Lcom/freeme/elementscenter/data/ECDownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/freeme/elementscenter/data/ECDownloadTask;->deleteFile(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/freeme/elementscenter/data/ECDownloadTask;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v7

    :goto_1
    if-eqz v1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lcom/freeme/elementscenter/data/ECDownloadTask;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/freeme/elementscenter/data/ECDownloadTask;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v0, v3}, Lcom/freeme/elementscenter/data/ECUtil;->writeInfoToFile(Ljava/lang/String;Lcom/freeme/elementscenter/ui/ECItemData;)Z

    invoke-static {v2}, Lcom/freeme/elementscenter/data/ECUtil;->createItemNewStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->postData(Lcom/freeme/elementscenter/ui/ECItemData;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->handleStatistic(Lcom/freeme/elementscenter/ui/ECItemData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleStatistic(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 4

    iget v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mTypeCode:I

    new-instance v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;

    invoke-direct {v1}, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    const/4 v2, 0x0

    iput v2, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->extraInfo:I

    iget-object v2, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->resName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    const v2, 0x186a1

    if-eq v0, v2, :cond_3

    const v2, 0x18705

    if-eq v0, v2, :cond_2

    const v2, 0x18769

    if-eq v0, v2, :cond_1

    const p1, 0x187cd

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "0801"

    iput-object p1, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mPageItemTypeCode:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->getECPoseOptionId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "0601"

    iput-object p1, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mPageItemTypeCode:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->getECWaterMarkOptionId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    :goto_0
    iget-object p1, v1, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_4
    return-void
.end method

.method private renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/data/ECDownloadTask;->downloadFiles()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    const/4 v0, 0x1

    iput v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/16 v0, 0x64

    iput v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    const/4 v0, 0x0

    iput v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/4 v0, -0x1

    iput v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    :goto_0
    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->notifyDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    iget-object v1, p0, Lcom/freeme/elementscenter/data/ECDownloadTask;->mItemData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->notifyDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public postData(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    iget-object v2, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "code"

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "head"

    const v2, 0x18831

    invoke-static {v2}, Lcom/freeme/elementscenter/data/NetworkUtil;->buildHeadData(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://service-fomultimedia.yy845.com:2860"

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/NetworkUtil;->accessNetworkByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
