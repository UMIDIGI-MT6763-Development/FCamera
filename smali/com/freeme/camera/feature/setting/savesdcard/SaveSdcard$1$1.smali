.class Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;
.super Ljava/lang/Object;
.source "SaveSdcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->onCallback(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$000(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/CameraDataAdapter;->getLocalDataList()Lcom/freeme/camera/data/LocalDataList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/data/LocalDataList;->get(I)Lcom/freeme/camera/data/LocalData;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v2, v2, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$100(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

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

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$202(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getLocalDataType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v2, v2, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$300(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/data/LocalDataUtil;->loadVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$202(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$400(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v0}, Lcom/freeme/camera/data/LocalData;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$500(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$200(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1$1;->this$1:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;->this$0:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->access$600(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method
