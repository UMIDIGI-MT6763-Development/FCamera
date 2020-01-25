.class Lcom/freeme/camera/GalleryActivity$7;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/freeme/camera/data/LocalDataAdapter$LocalDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDeleteCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/GalleryActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onMetadataUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$200(Lcom/freeme/camera/GalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$7;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$1100(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_2
    return-void
.end method
