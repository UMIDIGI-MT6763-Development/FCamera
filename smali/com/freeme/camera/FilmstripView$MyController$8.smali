.class Lcom/freeme/camera/FilmstripView$MyController$8;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$MyController;->flingInsideZoomView(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$MyController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->mCancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyController;->access$4300(Lcom/freeme/camera/FilmstripView$MyController;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$8;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/FilmstripView$MyController;->access$4602(Lcom/freeme/camera/FilmstripView$MyController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
