.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private final a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

.field private final b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

.field private c:Landroid/graphics/PointF;

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c:Landroid/graphics/PointF;

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->j:F

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;->hardware(Z)Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->setCenter(Landroid/graphics/PointF;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->g:I

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->h:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->i:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->j:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c(F)V

    return-void
.end method

.method private a()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method private a(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setRadius(F)V

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b(F)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->g:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setMaskColor(I)V

    return-void
.end method

.method private b()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d:F

    return v0
.end method

.method private b(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setExcessive(F)V

    return-void
.end method

.method private c()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e:F

    return v0
.end method

.method private c(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->j:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->setBlurSize(F)V

    return-void
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->j:F

    return v0
.end method

.method private d(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setMaskAlpha(F)V

    return-void
.end method

.method private e()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f:F

    return v0
.end method

.method private e(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->h:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setDegree(F)V

    return-void
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->h:F

    return v0
.end method

.method private f(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->i:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setSelective(F)V

    return-void
.end method

.method private g()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->i:F

    return v0
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "aperture"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "centerX"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "centerY"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "radius"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "excessive"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "maskAlpha"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e()F

    move-result v1

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "degree"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f()F

    move-result v1

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "selective"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->g()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    return-object p1
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setCenter(Landroid/graphics/PointF;)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "aperture"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->c(F)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "radius"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a(F)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "excessive"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->b(F)V

    goto :goto_1

    :cond_3
    const-string v0, "maskAlpha"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->d(F)V

    goto :goto_1

    :cond_4
    const-string v0, "degree"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->e(F)V

    goto :goto_1

    :cond_5
    const-string v0, "selective"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->f(F)V

    goto :goto_1

    :cond_6
    const-string v0, "centerX"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    :goto_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->setCenter(Landroid/graphics/PointF;)V

    goto :goto_1

    :cond_7
    const-string v0, "centerY"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKApertureFilter;->a()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method
