.class public Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    mul-float/2addr p1, p1

    return p1

    :cond_0
    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    const-wide v2, 0x400b333333333333L    # 3.4

    mul-double/2addr v0, v2

    const-wide v2, 0x3ff3333333333333L    # 1.2

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    return v0
.end method
