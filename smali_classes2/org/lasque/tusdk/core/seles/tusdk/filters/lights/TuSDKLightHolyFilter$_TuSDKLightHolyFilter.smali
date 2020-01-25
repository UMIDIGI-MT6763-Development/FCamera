.class Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_TuSDKLightHolyFilter"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "-slh1"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->d:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->f:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->disableThirdFrameCheck()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesThreeInputFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "intensity"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "contrast"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "mixturePercent"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->c:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->d:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setIntensity(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->e:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setContrast(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->f:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setMix(F)V

    return-void
.end method

.method public setContrast(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->d:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setMix(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/lights/TuSDKLightHolyFilter$_TuSDKLightHolyFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
