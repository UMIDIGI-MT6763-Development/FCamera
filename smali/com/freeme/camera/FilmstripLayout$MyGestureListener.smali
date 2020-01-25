.class Lcom/freeme/camera/FilmstripLayout$MyGestureListener;
.super Ljava/lang/Object;
.source "FilmstripLayout.java"

# interfaces
.implements Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripLayout;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/FilmstripLayout;Lcom/freeme/camera/FilmstripLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;-><init>(Lcom/freeme/camera/FilmstripLayout;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onDoubleTap(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onDown(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onFling(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onLongPress(FF)V

    return-void
.end method

.method public onScale(FFF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScale(FFF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleBegin(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScaleEnd()V

    :cond_0
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$100(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/FilmstripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView;->getController()Lcom/freeme/camera/filmstrip/FilmstripController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/FilmstripController;->getCurrentId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$700(Lcom/freeme/camera/FilmstripLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    float-to-int p2, p3

    shr-int/2addr p2, v1

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$900(Lcom/freeme/camera/FilmstripLayout;)I

    move-result p4

    shr-int/2addr p4, v1

    add-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/freeme/camera/FilmstripLayout;->access$902(Lcom/freeme/camera/FilmstripLayout;I)I

    cmpg-float p1, p3, v2

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$100(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/FilmstripView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->getCurrentItemLeft()I

    move-result p1

    int-to-float p3, p1

    :cond_3
    cmpl-float p1, p3, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$100(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/FilmstripView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->getCurrentItemLeft()I

    move-result p1

    int-to-float p3, p1

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v2

    if-gez p2, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p2, p1}, Lcom/freeme/camera/FilmstripLayout;->access$1000(Lcom/freeme/camera/FilmstripLayout;F)V

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    cmpl-float p1, p3, v2

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$1100(Lcom/freeme/camera/FilmstripLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripLayout;->access$700(Lcom/freeme/camera/FilmstripLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_7
    return v1
.end method

.method public onSingleTapUp(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripLayout;->access$800(Lcom/freeme/camera/FilmstripLayout;)Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/ui/FilmstripGestureRecognizer$Listener;->onUp(FF)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$900(Lcom/freeme/camera/FilmstripLayout;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->hideFilmstrip()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$1200(Lcom/freeme/camera/FilmstripLayout;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$900(Lcom/freeme/camera/FilmstripLayout;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->showFilmstrip()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p2}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->hideFilmstrip()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripLayout;->access$1200(Lcom/freeme/camera/FilmstripLayout;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->showFilmstrip()V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyGestureListener;->this$0:Lcom/freeme/camera/FilmstripLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/freeme/camera/FilmstripLayout;->access$902(Lcom/freeme/camera/FilmstripLayout;I)I

    return p2
.end method
