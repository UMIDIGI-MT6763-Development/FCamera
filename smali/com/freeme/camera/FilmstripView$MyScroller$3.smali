.class Lcom/freeme/camera/FilmstripView$MyScroller$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView$MyScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripView$MyScroller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller$3;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller$3;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5100(Lcom/freeme/camera/FilmstripView$MyScroller;)Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/FilmstripView$MyScroller$Listener;->onScrollEnd()V

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
