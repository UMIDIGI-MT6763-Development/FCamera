.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;


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
    .locals 1

    const-string v0, "-sscf2"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->e:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->f:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->g:F

    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->h:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->disableThirdFrameCheck()V

    return-void
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mixturePercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "intensity"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "lightLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "detailLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->d:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setIntensity(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->e:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setMixed(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->g:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setLightLevel(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->h:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setDetailLevel(F)V

    return-void
.end method

.method public setDetailLevel(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->h:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->h:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setLightLevel(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->g:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->g:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setMixed(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinColor2MixedFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
