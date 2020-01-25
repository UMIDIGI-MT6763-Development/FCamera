.class Lcom/freeme/camera/FilmstripView$MyController$5;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$focusX:F

.field final synthetic val$focusY:F


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView$ViewItem;FF)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    iput p3, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$focusX:F

    iput p4, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$focusY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v0

    div-float v4, p1, v0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$002(Lcom/freeme/camera/FilmstripView;F)F

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$current:Lcom/freeme/camera/FilmstripView$ViewItem;

    iget v2, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$focusX:F

    iget v3, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->val$focusY:F

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$5;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$4000(Lcom/freeme/camera/FilmstripView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/FilmstripView$ViewItem;->postScale(FFFII)V

    return-void
.end method
