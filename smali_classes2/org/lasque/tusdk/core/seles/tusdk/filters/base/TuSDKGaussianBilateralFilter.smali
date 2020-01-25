.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;
.super Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const-string v0, "-sgbv%s"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-sgbf%s"

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setBlurSize(F)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setDistanceNormalizationFactor(F)V

    return-void
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    const/4 v1, 0x5

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x3

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le p0, v2, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, ""

    aput-object v0, p0, v1

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBilateralWeightType()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->f:F

    return v0
.end method

.method public getDistanceNormalizationFactor()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->e:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "distanceNormalizationFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "distanceNormalizationFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "weightType"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "weightType"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->d:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->e:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setDistanceNormalizationFactor(F)V

    return-void
.end method

.method public setBilateralWeightType(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->d:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setDistanceNormalizationFactor(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBilateralFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
