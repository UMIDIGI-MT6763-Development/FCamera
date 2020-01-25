.class Lcom/freeme/camera/GalleryActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/GalleryActivity;->hideBottomControls()V
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

    iput-object p1, p0, Lcom/freeme/camera/GalleryActivity$3;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/GalleryActivity$3;->this$0:Lcom/freeme/camera/GalleryActivity;

    invoke-static {p1}, Lcom/freeme/camera/GalleryActivity;->access$600(Lcom/freeme/camera/GalleryActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
