.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;
.super Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const-string v0, "-sgbv%s"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-ssfbf%s"

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x40666666    # 3.6f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->d:F

    const p1, 0x3e0f5c29    # 0.14f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->d:F

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setBlurSize(F)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->e:F

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setThresholdLevel(F)V

    return-void
.end method

.method private static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMaxBlursize()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->d:F

    return v0
.end method

.method public getMaxThresholdLevel()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->e:F

    return v0
.end method

.method public getThresholdLevel()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->c:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKGaussianBlurFiveRadiusFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "thresholdLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "thresholdLevel"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->b:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->c:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setThresholdLevel(F)V

    return-void
.end method

.method public setThresholdLevel(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->c:F

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p1, v0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/base/TuSDKSurfaceBlurFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method
