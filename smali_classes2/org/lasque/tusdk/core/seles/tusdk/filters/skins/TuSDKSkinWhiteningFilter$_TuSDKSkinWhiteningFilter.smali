.class Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_TuSDKSkinWhiteningFilter"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-sscf7"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->f:F

    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->g:F

    const v0, 0x3e6147ae    # 0.22f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->h:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->i:F

    return-void
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "intensity"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "enableSkinColorDetection"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "lightLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "detailLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->e:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setIntensity(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->g:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setTemperature(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setEnableSkinColorDetection(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->h:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setLightLevel(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->i:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setDetailLevel(F)V

    return-void
.end method

.method public setDetailLevel(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->i:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->i:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->e:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setEnableSkinColorDetection(F)V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setLightLevel(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->h:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->h:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setTemperature(F)V
    .locals 7

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->g:F

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

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter$_TuSDKSkinWhiteningFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
