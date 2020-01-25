.class Lcom/freeme/camera/FilmstripView$MyController$6;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$MyController;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$MyController;

.field final synthetic val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

.field final synthetic val$decelerationX:Landroid/animation/ValueAnimator;

.field final synthetic val$decelerationY:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$decelerationX:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$decelerationY:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$decelerationX:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$decelerationY:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$6;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    return-void
.end method
