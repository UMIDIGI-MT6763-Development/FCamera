.class Lcom/freeme/camera/common/storage/StorageServiceImpl$1;
.super Ljava/lang/Object;
.source "StorageServiceImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/storage/StorageServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$000(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$200(Lcom/freeme/camera/common/storage/StorageServiceImpl;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$102(Lcom/freeme/camera/common/storage/StorageServiceImpl;I)I

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$100(Lcom/freeme/camera/common/storage/StorageServiceImpl;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->unSupportFrontSLR()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;->this$0:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->access$300(Lcom/freeme/camera/common/storage/StorageServiceImpl;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/16 v0, 0xa

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    :cond_0
    return-void
.end method
