.class Lcom/freeme/camera/GalleryActivity$5;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity;->showUndoDeletionBar()V
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

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$5;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$5;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$000(Lcom/freeme/camera/GalleryActivity;)Lcom/freeme/camera/CameraDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/CameraDataAdapter;->undoDataRemoval()Z

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$5;->this$0:Lcom/freeme/camera/GalleryActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/GalleryActivity;->access$800(Lcom/freeme/camera/GalleryActivity;Z)V

    return-void
.end method
