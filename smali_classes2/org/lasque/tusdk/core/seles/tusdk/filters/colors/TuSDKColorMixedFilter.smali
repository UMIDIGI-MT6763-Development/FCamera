.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sc1"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->a:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->disableSecondFrameCheck()V

    return-void
.end method


# virtual methods
.method public getMixed()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->a:F

    return v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "mixied"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->getMixed()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    return-object p1
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoInputFilter;->onInitOnGLThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setEnableLiveSticker(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mixturePercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->b:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->a:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setMixed(F)V

    return-void
.end method

.method public setMixed(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mixied"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKColorMixedFilter;->setMixed(F)V

    :cond_1
    return-void
.end method
