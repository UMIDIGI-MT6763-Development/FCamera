.class Lcom/freeme/camera/FilmstripLayout$1;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/freeme/camera/FilmstripLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->mCanceled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$100(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/FilmstripView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->getController()Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/FilmstripController;->goToFilmstrip()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->this$0:Lcom/freeme/camera/FilmstripLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/FilmstripLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$200(Lcom/freeme/camera/FilmstripLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripLayout$1;->mCanceled:Z

    return-void
.end method
