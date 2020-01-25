.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private a:I

.field private b:Landroid/graphics/PointF;

.field private c:I

.field private d:[F

.field private e:I

.field private f:F

.field private g:I

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-ss2"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->b:Landroid/graphics/PointF;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->d:[F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->h:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->e:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->b:Landroid/graphics/PointF;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->b:Landroid/graphics/PointF;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a([F)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->d:[F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->d:[F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->setVec3([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->h:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->h:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->g:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 4

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "vignette"

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteCenter"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteColor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteStart"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->e:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteEnd"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->g:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->b:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->d:[F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a([F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->h:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->b(F)V

    return-void
.end method

.method public setVignetteColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a([F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "vignette"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightVignetteFilter;->a(F)V

    :cond_1
    return-void
.end method
