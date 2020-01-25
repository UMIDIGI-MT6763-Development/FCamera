.class Lcom/freeme/camera/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/freeme/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity;->requestLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freeme/camera/util/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/GalleryActivity$1;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/CameraDataAdapter;->getLocalDataList()Lcom/freeme/camera/data/LocalDataList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/data/LocalDataList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$100(Lcom/freeme/camera/GalleryActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$400(Lcom/freeme/camera/GalleryActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/GalleryActivity$1$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/GalleryActivity$1$1;-><init>(Lcom/freeme/camera/GalleryActivity$1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/GalleryActivity;->finish()V

    :goto_0
    return-void
.end method
