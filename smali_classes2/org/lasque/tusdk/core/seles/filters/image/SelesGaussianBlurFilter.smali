.class public Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->vertexShaderForOptimizedBlur(IF)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->fragmentShaderForOptimizedBlur(IF)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->setTexelSpacingMultiplier(F)V

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    return-void
.end method

.method static synthetic A(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic B(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterPositionAttribute:I

    return p0
.end method

.method static synthetic C(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterTextureCoordinateAttribute:I

    return p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterPositionAttribute:I

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterTextureCoordinateAttribute:I

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->initializeAttributes()V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterInputTextureUniform:I

    return p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mVerticalPassTexelWidthOffsetUniform:I

    return p1
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mVerticalPassTexelHeightOffsetUniform:I

    return p1
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterPositionAttribute:I

    return p1
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method public static fragmentShaderForOptimizedBlur(IF)Ljava/lang/String;
    .locals 17

    move/from16 v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v3, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v12, p1

    float-to-double v13, v12

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    int-to-double v10, v6

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    neg-double v10, v10

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v4

    div-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v3, v6

    if-nez v6, :cond_1

    aget v4, v3, v6

    add-float/2addr v7, v4

    goto :goto_1

    :cond_1
    float-to-double v7, v7

    aget v9, v3, v6

    float-to-double v9, v9

    mul-double/2addr v9, v4

    add-double/2addr v7, v9

    double-to-float v4, v7

    move v7, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget v5, v3, v4

    div-float/2addr v5, v7

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    div-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    rem-int/2addr v0, v4

    add-int/2addr v2, v0

    const/4 v0, 0x7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uniform sampler2D inputImageTexture;\nuniform highp float texelWidthOffset;\nuniform highp float texelHeightOffset;\n\nvarying highp vec2 blurCoordinates["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "];\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "void main()\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   lowp vec4 sum = vec4(0.0);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "sum += texture2D(inputImageTexture, blurCoordinates[0]) * %f;\n"

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget v9, v3, v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v7, 0x1

    array-length v9, v3

    if-ge v8, v9, :cond_4

    aget v9, v3, v8

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v10, v8, 0x1

    array-length v11, v3

    if-ge v10, v11, :cond_5

    aget v10, v3, v10

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    add-float/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sum += texture2D(inputImageTexture, blurCoordinates[%d]) * %f;\n"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v11, v1

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sum += texture2D(inputImageTexture, blurCoordinates[%d]) * %f;\n"

    new-array v10, v4, [Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v10, v1

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-le v2, v0, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "highp vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_6
    if-ge v0, v2, :cond_9

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v7, v5, 0x1

    array-length v8, v3

    if-ge v7, v8, :cond_7

    aget v8, v3, v7

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    add-int/lit8 v9, v7, 0x1

    array-length v10, v3

    if-ge v9, v10, :cond_8

    aget v9, v3, v9

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    :goto_8
    add-float v10, v8, v9

    int-to-float v7, v7

    mul-float/2addr v8, v7

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sum += texture2D(inputImageTexture, blurCoordinates[0] + singleStepOffset * %f) * %f;\n"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v7, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "sum += texture2D(inputImageTexture, blurCoordinates[0] - singleStepOffset * %f) * %f;\n"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = sum;\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterTextureCoordinateAttribute:I

    return p1
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterInputTextureUniform:I

    return p1
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterInputTextureUniform2:I

    return p1
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mHorizontalPassTexelWidthOffsetUniform:I

    return p1
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mHorizontalPassTexelHeightOffsetUniform:I

    return p1
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic m(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterPositionAttribute:I

    return p0
.end method

.method static synthetic n(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterTextureCoordinateAttribute:I

    return p0
.end method

.method static synthetic o(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic p(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->initializeSecondaryAttributes()V

    return-void
.end method

.method static synthetic q(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic r(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic s(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic t(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic u(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic v(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method public static vertexShaderForOptimizedBlur(IF)Ljava/lang/String;
    .locals 17

    move/from16 v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v3, v2, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v12, p1

    float-to-double v13, v12

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double/2addr v15, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    int-to-double v10, v6

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    neg-double v10, v10

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v4

    div-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v3, v6

    if-nez v6, :cond_1

    aget v4, v3, v6

    add-float/2addr v7, v4

    goto :goto_1

    :cond_1
    float-to-double v7, v7

    aget v9, v3, v6

    float-to-double v9, v9

    mul-double/2addr v9, v4

    add-double/2addr v7, v9

    double-to-float v4, v7

    move v7, v4

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_3

    aget v5, v3, v4

    div-float/2addr v5, v7

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    div-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    rem-int/2addr v0, v4

    add-int/2addr v2, v0

    const/4 v0, 0x7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [F

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v6, 0x1

    array-length v8, v3

    if-ge v7, v8, :cond_4

    aget v8, v3, v7

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v9, v7, 0x1

    array-length v10, v3

    if-ge v9, v10, :cond_5

    aget v9, v3, v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    add-float v10, v8, v9

    int-to-float v7, v7

    mul-float/2addr v8, v7

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 blurCoordinates["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "];\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "void main()\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   gl_Position = position;\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   vec2 singleStepOffset = vec2(texelWidthOffset, texelHeightOffset);\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "blurCoordinates[0] = inputTextureCoordinate.xy;\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "blurCoordinates[%d] = inputTextureCoordinate.xy + singleStepOffset * %f;\n"

    new-array v7, v4, [Ljava/lang/Object;

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v9, v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    aget v9, v2, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "blurCoordinates[%d] = inputTextureCoordinate.xy - singleStepOffset * %f;\n"

    new-array v7, v4, [Ljava/lang/Object;

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    aget v8, v2, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic x(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mSecondFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic y(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic z(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method


# virtual methods
.method public getBlurPasses()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->f:I

    return v0
.end method

.method public getBlurRadiusAsFractionOfImageHeight()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e:F

    return v0
.end method

.method public getBlurRadiusAsFractionOfImageWidth()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d:F

    return v0
.end method

.method public getBlurRadiusInPixels()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    return v0
.end method

.method public getTexelSpacingMultiplier()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->c:F

    return v0
.end method

.method public isShouldResizeBlurRadiusWithImageSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    return v0
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p2, 0x1

    :goto_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->f:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mNoRotationTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-super {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlurPasses(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->f:I

    return-void
.end method

.method public setBlurRadiusAsFractionOfImageHeight(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d:F

    return-void
.end method

.method public setBlurRadiusAsFractionOfImageWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->d:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->e:F

    return-void
.end method

.method public setBlurRadiusInPixels(F)V
    .locals 12

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3b800000    # 0.00390625f

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    float-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    float-to-double v2, v0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    float-to-double v10, p1

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    rem-int/lit8 v0, p1, 0x2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->vertexShaderForOptimizedBlur(IF)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->b:F

    invoke-static {p1, v2}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->fragmentShaderForOptimizedBlur(IF)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->switchTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    return-void
.end method

.method public setShouldResizeBlurRadiusWithImageSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    return-void
.end method

.method public setTexelSpacingMultiplier(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->c:F

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mVerticalTexelSpacing:F

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->mHorizontalTexelSpacing:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesTwoPassTextureSamplingFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->getBlurRadiusAsFractionOfImageWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->getBlurRadiusAsFractionOfImageWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->getBlurRadiusAsFractionOfImageHeight()F

    move-result v0

    :goto_0
    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->setBlurRadiusInPixels(F)V

    :cond_1
    return-void
.end method

.method public switchTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/image/SelesGaussianBlurFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
