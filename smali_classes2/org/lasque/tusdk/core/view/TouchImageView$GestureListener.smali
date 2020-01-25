.class Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TouchImageView;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->e(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    :goto_1
    move v3, v0

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFZ)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->cancelFling()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    new-instance v1, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;II)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$Fling;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->performClick()Z

    move-result p1

    return p1
.end method
