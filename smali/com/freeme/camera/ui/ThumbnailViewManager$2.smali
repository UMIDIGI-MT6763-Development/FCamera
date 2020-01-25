.class Lcom/freeme/camera/ui/ThumbnailViewManager$2;
.super Ljava/lang/Object;
.source "ThumbnailViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/ThumbnailViewManager;->doAnimation(Lcom/freeme/camera/common/widget/RotateImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/ThumbnailViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$2;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$2;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$500(Lcom/freeme/camera/ui/ThumbnailViewManager;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/ThumbnailViewManager$2;->this$0:Lcom/freeme/camera/ui/ThumbnailViewManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/ThumbnailViewManager;->access$400(Lcom/freeme/camera/ui/ThumbnailViewManager;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
