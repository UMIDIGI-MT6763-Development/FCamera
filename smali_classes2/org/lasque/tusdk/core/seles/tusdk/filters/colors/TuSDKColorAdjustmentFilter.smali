.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-sc5"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b:F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e:F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f:F

    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g:F

    return-void
.end method

.method private a()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a:F

    return v0
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->h:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b:F

    return v0
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->i:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private c()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c:F

    return v0
.end method

.method private c(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->j:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d:F

    return v0
.end method

.method private d(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->k:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private e()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e:F

    return v0
.end method

.method private e(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->l:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f:F

    return v0
.end method

.method private f(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->m:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private g()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g:F

    return v0
.end method

.method private g(F)V
    .locals 7

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g:F

    const v0, 0x459c4000    # 5000.0f

    cmpg-float v0, p1, v0

    const-wide v1, 0x40b3880000000000L    # 5000.0

    if-gez v0, :cond_0

    const-wide v3, 0x3f3a36e2eb1c432dL    # 4.0E-4

    goto :goto_0

    :cond_0
    const-wide v3, 0x3f0f75104d551d69L    # 6.0E-5

    :goto_0
    float-to-double v5, p1

    sub-double/2addr v5, v1

    mul-double/2addr v5, v3

    double-to-float p1, v5

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->n:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "brightness"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a()F

    move-result v1

    const v2, -0x41333333    # -0.4f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "contrast"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3fe66666    # 1.8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "saturation"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "exposure"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d()F

    move-result v1

    const/high16 v3, -0x3fe00000    # -2.5f

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "shadows"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "highlights"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "temperature"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g()F

    move-result v1

    const v2, 0x455ac000    # 3500.0f

    const v3, 0x45ea6000    # 7500.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->h:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "contrast"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->i:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "saturation"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->j:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "exposure"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->k:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "shadows"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->l:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "highlights"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->m:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->n:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g(F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->a(F)V

    goto :goto_0

    :cond_1
    const-string v0, "contrast"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->b(F)V

    goto :goto_0

    :cond_2
    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->c(F)V

    goto :goto_0

    :cond_3
    const-string v0, "exposure"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->d(F)V

    goto :goto_0

    :cond_4
    const-string v0, "shadows"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->e(F)V

    goto :goto_0

    :cond_5
    const-string v0, "highlights"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->f(F)V

    goto :goto_0

    :cond_6
    const-string v0, "temperature"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorAdjustmentFilter;->g(F)V

    :cond_7
    :goto_0
    return-void
.end method
