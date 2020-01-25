.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sc4"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b:F

    return-void
.end method

.method private a()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a:F

    return v0
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b:F

    return v0
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "hue"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "hueSpace"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "hue"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "hueSpace"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->d:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b(F)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "hue"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->a(F)V

    goto :goto_0

    :cond_1
    const-string v0, "hueSpace"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorSelectiveFilter;->b(F)V

    :cond_2
    :goto_0
    return-void
.end method
