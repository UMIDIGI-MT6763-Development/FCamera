.class public Lorg/lasque/tusdk/core/view/TouchImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;,
        Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;,
        Lorg/lasque/tusdk/core/view/TouchImageView$Fling;,
        Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;,
        Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;,
        Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;,
        Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;,
        Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;,
        Lorg/lasque/tusdk/core/view/TouchImageView$State;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View$OnTouchListener;

.field private B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

.field private a:F

.field private b:Landroid/graphics/Matrix;

.field private c:Landroid/graphics/Matrix;

.field private d:Lorg/lasque/tusdk/core/view/TouchImageView$State;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:[F

.field private j:Landroid/content/Context;

.field private k:Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

.field private l:Landroid/widget/ImageView$ScaleType;

.field private m:Z

.field private n:Z

.field private o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Landroid/view/ScaleGestureDetector;

.field private y:Landroid/view/GestureDetector;

.field private z:Landroid/view/GestureDetector$OnDoubleTapListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->z:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->A:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->z:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->A:Landroid/view/View$OnTouchListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->z:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->A:Landroid/view/View$OnTouchListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(FFF)F
    .locals 2

    cmpg-float v0, p3, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    move p2, v1

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    move p3, v1

    :goto_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;FFF)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TouchImageView;->b(FFF)F

    move-result p0

    return p0
.end method

.method private a(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_0

    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    return p2
.end method

.method private a(FF)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private a(FFZ)Landroid/graphics/PointF;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float/2addr p1, v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float/2addr p2, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->z:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$Fling;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->k:Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->u:F

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->w:F

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->t:F

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->v:F

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->s:I

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->r:I

    :cond_0
    return-void
.end method

.method private a(DFFZ)V
    .locals 4

    if-eqz p5, :cond_0

    iget p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->g:F

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->h:F

    goto :goto_0

    :cond_0
    iget p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    :goto_0
    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    float-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-float v2, v2

    iput v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p5

    if-gez v0, :cond_2

    iput p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    :cond_2
    :goto_1
    iget-object p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->c()V

    return-void
.end method

.method private a(IFFFIII)V
    .locals 2

    int-to-float p6, p6

    cmpg-float v0, p4, p6

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    int-to-float p3, p7

    const/4 p4, 0x0

    aget p4, p2, p4

    mul-float/2addr p3, p4

    sub-float/2addr p6, p3

    mul-float/2addr p6, v1

    aput p6, p2, p1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    cmpl-float p7, p2, p7

    if-lez p7, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    sub-float/2addr p4, p6

    mul-float/2addr p4, v1

    neg-float p3, p4

    aput p3, p2, p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float/2addr p5, v1

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    iget-object p3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    mul-float/2addr p2, p4

    mul-float/2addr p6, v1

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p3, p1

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->j:Landroid/content/Context;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/lasque/tusdk/core/view/TouchImageView$ScaleListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->x:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lorg/lasque/tusdk/core/view/TouchImageView$GestureListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->y:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->c:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    const/high16 p1, 0x40400000    # 3.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    const/high16 p1, 0x3f400000    # 0.75f

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->g:F

    const/high16 p1, 0x3fa00000    # 1.25f

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->h:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object p1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->n:Z

    new-instance p1, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lorg/lasque/tusdk/core/view/TouchImageView$PrivateOnTouchListener;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$1;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/TouchImageView$State;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;DFFZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(DFFZ)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    return-void
.end method

.method private b(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$Fling;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->k:Lorg/lasque/tusdk/core/view/TouchImageView$Fling;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFF)F

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$State;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->d:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    return-object p0
.end method

.method private c()V
    .locals 5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v3, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    aput v1, v0, v3

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float v3, v1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v3, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v2

    aput v1, v0, v3

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private d()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->t:F

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    return p0
.end method

.method private e()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->u:F

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    return p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/view/TouchImageView;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    return p0
.end method

.method private f()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->g()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->x:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method private g()V
    .locals 12

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->c:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    iget v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    sget-object v5, Lorg/lasque/tusdk/core/view/TouchImageView$1;->a:[I

    iget-object v6, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v3, v1

    :pswitch_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    :pswitch_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :pswitch_3
    move v1, v6

    goto :goto_0

    :goto_1
    :pswitch_4
    iget v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v7, v5

    mul-float v8, v1, v2

    sub-float/2addr v7, v8

    iget v8, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float v10, v8

    mul-float v11, v3, v4

    sub-float/2addr v10, v11

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iput v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->t:F

    int-to-float v5, v8

    sub-float/2addr v5, v10

    iput v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->u:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->isZoomed()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->m:Z

    if-nez v5, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    div-float/2addr v10, v1

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v6, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    goto :goto_2

    :cond_2
    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->v:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->w:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v3, 0x0

    iget v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->t:F

    div-float/2addr v5, v2

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    mul-float/2addr v5, v2

    aput v5, v1, v3

    const/4 v3, 0x4

    iget v5, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->u:F

    div-float/2addr v5, v4

    mul-float/2addr v5, v2

    aput v5, v1, v3

    const/4 v3, 0x2

    aget v4, v1, v3

    const/4 v3, 0x5

    aget v10, v1, v3

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->v:F

    mul-float v5, v1, v2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v6

    const/4 v3, 0x2

    iget v7, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->r:I

    iget v8, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(IFFFIII)V

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->w:F

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    mul-float v4, v1, v2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v5

    const/4 v2, 0x5

    iget v6, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->s:I

    iget v7, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(IFFFIII)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    :goto_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b()V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->y:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/view/TouchImageView;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    return p0
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/view/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result p0

    return p0
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/view/TouchImageView;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    return p0
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/view/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result p0

    return p0
.end method

.method static synthetic m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic n(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b()V

    return-void
.end method

.method static synthetic o(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->A:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static synthetic q(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->c()V

    return-void
.end method

.method static synthetic r(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s(Lorg/lasque/tusdk/core/view/TouchImageView;)[F
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    return-object p0
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    if-gez p1, :cond_1

    return v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    if-lez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method protected compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public getCurrentZoom()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v2, v2

    iget v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    iget v6, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    invoke-direct {v4, v5, v1, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->n:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->m:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    iget v1, v1, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    iget v2, v2, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-direct {p0, p1, v2, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(III)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    invoke-direct {p0, p2, v3, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(III)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    iget p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    iget p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TouchImageView;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    const-string v0, "matrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->w:F

    const-string v0, "matchViewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->v:F

    const-string v0, "viewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->s:I

    const-string v0, "viewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->r:I

    const-string v0, "imageRendered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->m:Z

    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "saveScale"

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewHeight"

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewWidth"

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->t:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "viewWidth"

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "viewHeight"

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v1, "matrix"

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "imageRendered"

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public printMatrixInfo()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " TransX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " TransY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void
.end method

.method public resetZoomToCenter()V
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float v7, v2, v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result v1

    mul-float/2addr v1, v3

    add-float v8, v1, v0

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;

    iget v6, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/lasque/tusdk/core/view/TouchImageView$DoubleTapZoom;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFZ)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void
.end method

.method public setImageBitmapWithAnim(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->g()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->resetZoomToCenter()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->f()V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->f:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->h:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->e:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->g:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->z:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->B:Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->A:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->n:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollPosition(FF)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->a:F

    invoke-virtual {p0, v0, p1, p2}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->o:Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->l:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    invoke-virtual {p0, p4}, Lorg/lasque/tusdk/core/view/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    iget p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(DFFZ)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->d()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->p:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    const/4 p2, 0x5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->e()F

    move-result p4

    mul-float/2addr p3, p4

    iget p4, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->q:I

    int-to-float p4, p4

    mul-float/2addr p4, v1

    sub-float/2addr p3, p4

    neg-float p3, p3

    aput p3, p1, p2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->i:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->b()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lorg/lasque/tusdk/core/view/TouchImageView;)V
    .locals 3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
