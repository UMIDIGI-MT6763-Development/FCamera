.class Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TouchImageView;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;DFFZ)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->f(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->f(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v2}, Lorg/lasque/tusdk/core/view/TouchImageView;->e(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->e(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, p1

    if-eqz v1, :cond_2

    new-instance p1, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->i(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->k(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFZ)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
