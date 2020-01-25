.class Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/ThumbnailViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[doInBackground]begin."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[doInBackground]task is cancel,return."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v0, Lcom/freeme/camera/data/LocalDataList;

    invoke-direct {v0}, Lcom/freeme/camera/data/LocalDataList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$200(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/freeme/camera/data/LocalMediaData$PhotoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$200(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/freeme/camera/data/LocalMediaData$VideoData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v3, v4}, Lcom/freeme/camera/data/LocalMediaData$VideoData;->query(Landroid/content/ContentResolver;Landroid/net/Uri;J)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/data/LocalDataList;->addAll(Ljava/util/List;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/data/LocalDataList;->addAll(Ljava/util/List;)V

    :cond_2
    new-instance v1, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;

    invoke-direct {v1}, Lcom/freeme/camera/data/LocalData$NewestFirstComparator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/data/LocalDataList;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    iget-object v2, v2, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, p1

    :goto_0
    :try_start_2
    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getWidth()I

    move-result v3

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getHeight()I

    move-result v4

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getWidth()I

    move-result v5

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getHeight()I

    move-result v6

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getRotation()I

    move-result v7

    const v8, 0x61a80

    invoke-static/range {v2 .. v8}, Lcom/freeme/camera/data/LocalDataUtil;->loadImageThumbnailFromStream(Ljava/io/InputStream;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v2}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$200(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/data/LocalDataUtil;->loadVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    iget-object v2, v2, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/freeme/camera/common/utils/BitmapCreator;->getLastBitmapFromDatabase(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_5
    iget-object v3, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    iget-object v3, v3, Lcom/freeme/camera/ui/ThumbnailViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    invoke-static {}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastBitmapFromDatabase bitmap = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPostExecute]isCancelled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->isCancelled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$300(Lcom/freeme/camera/ui/ThumbnailViewManager;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$500(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$400(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ThumbnailViewManager$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
