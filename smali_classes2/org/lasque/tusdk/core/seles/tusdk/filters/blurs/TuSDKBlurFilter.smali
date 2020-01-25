.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;
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


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->c:Landroid/graphics/PointF;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->f:F

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;->hardware(Z)Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->addFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->setInitialFilters([Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->setTerminalFilter(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setCenter(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->d:F

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setExcessive(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->e:F

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setDegree(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setMaskAlpha(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setRadius(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setSelective(F)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    :goto_0
    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a(F)V

    return-void
.end method

.method private a()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->f:F

    return v0
.end method

.method private a(F)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->f:F

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->setBlurSize(F)V

    return-void
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilterGroup;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurSevenRadiusFilter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "blurSize"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const-string v0, "blurSize"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a()F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    :goto_0
    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->c:Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSelectiveFilter;->setCenter(Landroid/graphics/PointF;)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "blurSize"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/blurs/TuSDKBlurFilter;->a(F)V

    :cond_1
    return-void
.end method
