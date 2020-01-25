.class Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TouchImageView;

.field private b:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->b:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->g(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->h(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/view/TouchImageView$State;->DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/view/TouchImageView$State;->FLING:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/view/TouchImageView$State;->DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    if-ne v1, v2, :cond_3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->i(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v5}, Lorg/lasque/tusdk/core/view/TouchImageView;->j(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;FFF)F

    move-result v1

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->k(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v5}, Lorg/lasque/tusdk/core/view/TouchImageView;->l(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;FFF)F

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->n(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->b:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->b:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->cancelFling()V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->DRAG:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    goto :goto_0

    :cond_2
    :pswitch_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    :goto_0
    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->o(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->o(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_4
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
