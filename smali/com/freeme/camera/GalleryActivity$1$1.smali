.class Lcom/freeme/camera/GalleryActivity$1$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity$1;->onCallback(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/GalleryActivity$1;


# direct methods
.method constructor <init>(Lcom/freeme/camera/GalleryActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$1$1;->this$1:Lcom/freeme/camera/GalleryActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$1$1;->this$1:Lcom/freeme/camera/GalleryActivity$1;

    iget-object v0, v0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$200(Lcom/freeme/camera/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/GalleryActivity$1$1;->this$1:Lcom/freeme/camera/GalleryActivity$1;

    iget-object v0, v0, Lcom/freeme/camera/GalleryActivity$1;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {v0}, Lcom/freeme/camera/GalleryActivity;->access$300(Lcom/freeme/camera/GalleryActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
