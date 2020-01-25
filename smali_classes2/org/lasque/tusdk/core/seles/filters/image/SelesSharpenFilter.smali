.class public Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float imageWidthFactor; \nuniform float imageHeightFactor; \nuniform float sharpness;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate; \nvarying vec2 topTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\nvoid main()\n{\n    gl_Position = position;\n    \n    mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n    mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n    \n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n    topTextureCoordinate = inputTextureCoordinate.xy + heightStep;     \n    bottomTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    \n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n}"

    const-string v1, "precision highp float;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    mediump vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;\n    mediump vec3 leftTextureColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\n    mediump vec3 rightTextureColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\n    mediump vec3 topTextureColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\n    mediump vec3 bottomTextureColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\n\n    gl_FragColor = vec4((textureColor * centerMultiplier - (leftTextureColor * edgeMultiplier + rightTextureColor * edgeMultiplier + topTextureColor * edgeMultiplier + bottomTextureColor * edgeMultiplier)), texture2D(inputImageTexture, bottomTextureCoordinate).w);\n}"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->d:F

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->b:I

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->c:I

    return p0
.end method


# virtual methods
.method public getSharpness()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->d:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "sharpness"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "imageWidthFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "imageHeightFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->c:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->d:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->setSharpness(F)V

    return-void
.end method

.method public setSharpness(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->d:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->d:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesSharpenFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
