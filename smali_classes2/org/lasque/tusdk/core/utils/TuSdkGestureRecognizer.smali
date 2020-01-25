.class public abstract Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;
    }
.end annotation


# static fields
.field public static MultipleStablizationDistance:J = 0x32L


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:J

.field private final k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->l:Ljava/lang/Runnable;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    invoke-direct {p0, p1, v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->h:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a()V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepData()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    move-result-object v0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchMultipleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 4

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    invoke-direct {p0, p1, v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->l:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getMultipleStablizationDistance()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepData()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    move-result-object v0

    invoke-virtual {p0, p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchEnd(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a()V

    :goto_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d(Landroid/view/MotionEvent;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d:Landroid/graphics/PointF;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->b(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchMultipleMoveForStablization(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->k:Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private d(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e:F

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->h:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b()V

    invoke-virtual {p0, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchMultipleBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private e(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private f(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepData()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    move-result-object v0

    invoke-virtual {p0, p0, p1, p2, v0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->onTouchSingleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    const/4 p1, 0x1

    return p1
.end method

.method private g(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b:I

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e:F

    sub-float v2, v0, v2

    iput v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f:F

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g:F

    sub-float v2, v1, v2

    iput v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->h:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e:F

    iput v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g:F

    invoke-direct {p0, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDegree()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->g:F

    return v0
.end method

.method public getLastPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMultipleStablizationDistance()J
    .locals 4

    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->j:J

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-wide v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->MultipleStablizationDistance:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->j:J

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->j:J

    return-wide v0
.end method

.method public getSpace()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e:F

    return v0
.end method

.method public getStepData()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d:Landroid/graphics/PointF;

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f:F

    iput v1, v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->h:F

    iput v1, v0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    return-object v0
.end method

.method public getStepDegree()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->h:F

    return v0
.end method

.method public getStepPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStepSpace()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->f:F

    return v0
.end method

.method public isMultipleStablization()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->i:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->d(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->e(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->b(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onTouchBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V
.end method

.method public onTouchEnd(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    return-void
.end method

.method public onTouchMultipleBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onTouchMultipleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    return-void
.end method

.method public onTouchMultipleMoveForStablization(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    return-void
.end method

.method public abstract onTouchSingleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
.end method

.method public setMultipleStablization(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->i:Z

    return-void
.end method

.method public setMultipleStablizationDistance(J)V
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->j:J

    return-void
.end method
