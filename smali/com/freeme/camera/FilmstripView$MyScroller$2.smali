.class Lcom/freeme/camera/FilmstripView$MyScroller$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller$2;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$2;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5100(Lcom/freeme/camera/FilmstripView$MyScroller;)Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/FilmstripView$MyScroller$Listener;->onScrollUpdate(II)V

    return-void
.end method
