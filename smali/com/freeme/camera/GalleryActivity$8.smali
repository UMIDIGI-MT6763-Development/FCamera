.class Lcom/freeme/camera/GalleryActivity$8;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity;->handleDelete()V
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

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$1500(Lcom/freeme/camera/GalleryActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p2}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/freeme/camera/CameraDataAdapter;->removeData(I)V

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/CameraDataAdapter;->getTotalNumber()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$100(Lcom/freeme/camera/GalleryActivity;)Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$8;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/CameraDataAdapter;->executeDeletion()Z

    return-void
.end method
