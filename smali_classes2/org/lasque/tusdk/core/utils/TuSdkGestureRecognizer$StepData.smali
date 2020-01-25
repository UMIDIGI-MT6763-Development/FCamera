.class public Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StepData"
.end annotation


# instance fields
.field private a:I

.field public stepDegree:F

.field public stepPoint:Landroid/graphics/PointF;

.field public stepSpace:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->c(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method private b()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iget v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->b()Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;

    move-result-object p0

    return-object p0
.end method

.method private c(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iget v2, p1, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepSpace:F

    iget v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    iget p1, p1, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    add-float/2addr v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->stepDegree:F

    iget p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;->a:I

    return-void
.end method
