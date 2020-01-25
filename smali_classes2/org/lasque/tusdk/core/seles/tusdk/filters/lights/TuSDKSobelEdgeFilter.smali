.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-ssev1"

    const-string v1, "-ssef1"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->g:F

    const v0, 0x3cf5c28f    # 0.03f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->h:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->disableSecondFrameCheck()V

    return-void
.end method

.method private a()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e:F

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a:I

    return p0
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    return v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b(F)V

    return-void
.end method

.method private c()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->g:F

    return v0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b()F

    move-result p0

    return p0
.end method

.method private c(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->g:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->g:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->h:F

    return v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    return p0
.end method

.method private d(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->h:F

    :cond_0
    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->h:F

    return p0
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 5

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "edgeStrength"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "thresholdLevel"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "speed"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d()F

    move-result v1

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "showType"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c()F

    move-result v1

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->setEnableLiveSticker(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "stepOffset"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "edgeStrength"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "thresholdLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "showType"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->e:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->g:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->h:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d(F)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "edgeStrength"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->a(F)V

    goto :goto_0

    :cond_1
    const-string v0, "thresholdLevel"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->b(F)V

    goto :goto_0

    :cond_2
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->d(F)V

    goto :goto_0

    :cond_3
    const-string v0, "showType"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKSobelEdgeFilter;->c(F)V

    :cond_4
    :goto_0
    return-void
.end method
