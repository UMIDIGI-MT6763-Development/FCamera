.class Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;
.super Landroid/os/AsyncTask;
.source "CameraDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/CameraDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNewPhotosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/freeme/camera/data/LocalData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mMinPhotoId:J

.field final synthetic this$0:Lcom/freeme/camera/CameraDataAdapter;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/CameraDataAdapter;J)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->mMinPhotoId:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->mMinPhotoId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object p1, p1, v1

    sget-object v0, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->mMinPhotoId:J

    invoke-static {p1, v0, v1, v2}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/data/LocalData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/data/LocalData;

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getContentId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-static {v2}, Lcom/freeme/camera/CameraDataAdapter;->access$200(Lcom/freeme/camera/CameraDataAdapter;)J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/freeme/camera/CameraDataAdapter;->access$202(Lcom/freeme/camera/CameraDataAdapter;J)J

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/data/LocalData;

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/StorageUtil;->getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/CameraDataAdapter$LoadNewPhotosTask;->this$0:Lcom/freeme/camera/CameraDataAdapter;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/CameraDataAdapter;->addData(Lcom/freeme/camera/data/LocalData;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
