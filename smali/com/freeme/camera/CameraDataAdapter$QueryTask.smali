.class Lcom/freeme/camera/CameraDataAdapter$QueryTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_METADATA:I = 0x5


# instance fields
.field private final mDoneCallback:Lcom/freeme/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/util/Callback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/util/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->mDoneCallback:Lcom/freeme/camera/util/Callback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;
    .locals 7

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/freeme/camera/data/LocalDataList;

    invoke-direct {v2}, Lcom/freeme/camera/data/LocalDataList;-><init>()V

    sget-object v3, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    invoke-static {v1, v3, v4, v5}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v3

    sget-object v6, Lcom/freeme/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v4, v5}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/data/LocalData;

    invoke-interface {v4}, Lcom/freeme/camera/data/LocalData;->getContentId()J

    move-result-wide v4

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/freeme/camera/data/LocalDataList;->addAll(Ljava/util/List;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Lcom/freeme/camera/data/LocalDataList;->addAll(Ljava/util/List;)V

    :cond_2
    new-instance v1, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v1}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;-><init>()V

    invoke-virtual {v2, v1}, Lcom/freeme/camera/data/LocalDataList;->sort(Ljava/util/Comparator;)V

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/freeme/camera/data/LocalData;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p1, v0, v2, v4, v5}, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;-><init>(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/data/LocalDataList;J)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->doInBackground([Landroid/content/Context;)Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    iget-wide v1, p1, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;->mLastPhotoId:J

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/CameraDataAdapter;->access$202(Lcom/freeme/camera/CameraDataAdapter;J)J

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    iget-object p1, p1, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;->mLocalDataList:Lcom/freeme/camera/data/LocalDataList;

    invoke-static {v0, p1}, Lcom/freeme/camera/CameraDataAdapter;->access$300(Lcom/freeme/camera/CameraDataAdapter;Lcom/freeme/camera/data/LocalDataList;)V

    iget-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->mDoneCallback:Lcom/freeme/camera/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;

    iget-object v0, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v0}, Lcom/freeme/camera/CameraDataAdapter;->access$200(Lcom/freeme/camera/CameraDataAdapter;)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;-><init>(Lcom/freeme/camera/CameraDataAdapter;J)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v2}, Lcom/freeme/camera/CameraDataAdapter;->access$400(Lcom/freeme/camera/CameraDataAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$QueryTask;->onPostExecute(Lcom/freeme/camera/CameraDataAdapter$QueryTaskResult;)V

    return-void
.end method
