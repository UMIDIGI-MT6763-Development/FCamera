.class Lcom/freeme/camera/ui/CameraAppUI$2;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$900(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/ThumbnailViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->updateThumbnail(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
