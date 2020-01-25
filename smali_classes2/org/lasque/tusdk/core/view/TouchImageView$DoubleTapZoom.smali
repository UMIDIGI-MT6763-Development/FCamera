.class Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TouchImageView;

.field private b:J

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFZ)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->h:Landroid/view/animation/AccelerateDecelerateInterpolator;

    sget-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->ANIMATE_ZOOM:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->b:J

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->c:F

    iput p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->d:F

    iput-boolean p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->g:Z

    const/4 p2, 0x0

    invoke-static {p1, p3, p4, p2}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->e:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->f:F

    iget p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->e:F

    iget p3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->f:F

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->i:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->i(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->k(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->j:Landroid/graphics/PointF;

    return-void
.end method

.method private a()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->h:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private a(F)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->j:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->i:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->i:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->j:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->i:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->e:F

    iget v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->f:F

    invoke-static {p1, v2, v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v2}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private b(F)D
    .locals 4

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->c:F

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->d:F

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-double v0, v0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->d(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->b(F)D

    move-result-wide v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    iget v4, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->e:F

    iget v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->f:F

    iget-boolean v6, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->g:Z

    invoke-static/range {v1 .. v6}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;DFFZ)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a(F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->q(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    :goto_0
    return-void
.end method
