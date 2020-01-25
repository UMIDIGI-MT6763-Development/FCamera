.class Lcom/freeme/camera/FilmstripView$MyController$4;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$MyController;->zoomAt(Lcom/freeme/camera/FilmstripView$ViewItem;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$MyController;

.field final synthetic val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

.field final synthetic val$endScale:F

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;FLcom/freeme/camera/FilmstripView$ViewItem;FF)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iput p2, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$endScale:F

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    iput p4, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$focusX:F

    iput p5, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    iget v0, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$endScale:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    iget v2, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$focusX:F

    iget v3, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$focusY:F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    div-float v4, v0, p1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->postScale(FFFII)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    iget v0, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$endScale:F

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->inFullScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/ui/ZoomView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->resetTransform()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4200(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyController;->access$4300(Lcom/freeme/camera/FilmstripView$MyController;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4400(Lcom/freeme/camera/FilmstripView;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$4502(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->zoomAtIndexChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3700(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3800(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2500(Lcom/freeme/camera/FilmstripView;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$1000(Lcom/freeme/camera/FilmstripView$MyController;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$MyController;->inZoomView()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$3900(Lcom/freeme/camera/FilmstripView;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$4;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyController;->access$900(Lcom/freeme/camera/FilmstripView$MyController;)V

    return-void
.end method
