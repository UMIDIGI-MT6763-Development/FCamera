.class public Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;
.super Landroid/os/AsyncTask;
.source "PluginDownloadAndInstallTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

.field private mStepCnts:I

.field private mSumBytes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

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

    const-string v2, "zzz,HTTP_OK"

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

    const-string v7, "zzz,InputStream===="

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

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    iget v6, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mSumBytes:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mSumBytes:I

    iget v5, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mSumBytes:I

    iget v6, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mStepCnts:I

    mul-int/2addr v6, p3

    if-lt v5, v6, :cond_1

    new-array v5, v3, [Ljava/lang/Integer;

    iget v6, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mStepCnts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v5}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->publishProgress([Ljava/lang/Object;)V

    iget v5, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mStepCnts:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mStepCnts:I

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    if-eqz p3, :cond_3

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->delete()Z
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


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {}, Lcom/freeme/elementscenter/data/ECUtil;->getPluginDownloadPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;

    invoke-direct {v5}, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;-><init>()V

    iput v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->extraInfo:I

    const-string v0, ""

    iput-object v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->resName:Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->getOptionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    const/4 v0, 0x5

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    iget-boolean v4, v4, Lcom/freeme/elementscenter/dc/data/PluginItem;->isNeedUpdate:Z

    if-nez v4, :cond_5

    invoke-static {v3}, Lcom/freeme/elementscenter/data/ECUtil;->backgroundInstallAPK(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/freeme/elementscenter/data/ECUtil;->InstallAPK(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iput v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    iget-object v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TAG"

    const-string v3, "zzz,PluginDownload come here"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".delete"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".delete"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->deleteFile(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v3}, Lcom/freeme/elementscenter/data/ECUtil;->deleteFile(Ljava/lang/String;)V

    :cond_6
    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v1, v4}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    iput v1, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    iget-object v1, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_7
    invoke-static {v3}, Lcom/freeme/elementscenter/data/ECUtil;->backgroundInstallAPK(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    iget-object v0, v5, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/freeme/elementscenter/data/ECUtil;->InstallAPK(Ljava/lang/String;Landroid/content/Context;)V

    :cond_9
    :goto_1
    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".delete"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".delete"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->deleteFile(Ljava/lang/String;)V

    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getPluginItem()Lcom/freeme/elementscenter/dc/data/PluginItem;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->mPluginItem:Lcom/freeme/elementscenter/dc/data/PluginItem;

    return-object v0
.end method
