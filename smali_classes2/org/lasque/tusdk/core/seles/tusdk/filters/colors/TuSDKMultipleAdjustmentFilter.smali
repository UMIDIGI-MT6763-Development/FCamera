.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/PointF;

.field private q:I

.field private r:[F

.field private s:I

.field private t:F

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float imageWidthFactor; \nuniform float imageHeightFactor; \nuniform float sharpness;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate; \nvarying vec2 topTextureCoordinate;\nvarying vec2 bottomTextureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\nvoid main()\n{\n    gl_Position = position;\n    \n    mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n    mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n    \n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n    topTextureCoordinate = inputTextureCoordinate.xy + heightStep;     \n    bottomTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    \n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n}"

    const-string v1, " precision highp float; varying highp vec2 textureCoordinate; uniform sampler2D inputImageTexture; uniform lowp float brightness; uniform lowp float contrast; uniform lowp float saturation; uniform lowp float exposure; uniform lowp float shadows; uniform lowp float highlights; uniform lowp float temperature;uniform lowp vec2 vignetteCenter;uniform lowp vec3 vignetteColor;uniform highp float vignetteStart;uniform highp float vignetteEnd; const highp vec3 weightHighlightsShadows = vec3(0.3, 0.3, 0.3); const highp vec3 weightSaturation = vec3(0.2125, 0.7154, 0.0721); const highp vec3 warmFilter = vec3(0.93, 0.54, 0.0); const highp mat3 RGBtoYIQ = mat3(0.299, 0.587, 0.114, 0.596, -0.274, -0.322, 0.212, -0.523, 0.311); const highp mat3 YIQtoRGB = mat3(1.0, 0.956, 0.621, 1.0, -0.272, -0.647, 1.0, -1.105, 1.702); highp vec3 handleBrightness(highp vec3 color) {     if(brightness == 0.0) return color;     return (color + vec3(brightness)); } highp vec3 handleContrast(highp vec3 color){    if(contrast == 1.0) return color;    return (color - vec3(0.5)) * contrast + vec3(0.5);} highp vec3 handleSaturation(highp vec3 color){    if(saturation == 1.0) return color;        highp float luminance = dot(color, weightSaturation);    return mix(vec3(luminance), color, saturation);} highp vec3 handleExposure(highp vec3 color) {     if(exposure == 0.0) return color;     return color * pow(2.0, exposure); } highp vec3 handleHighlightsShadows(highp vec3 color) {     if(shadows == 0.0 && highlights == 1.0) return color;          highp float luminance = dot(color, weightHighlightsShadows);          highp float shadow = clamp((pow(luminance, 1.0/(shadows+1.0)) + (-0.76)*pow(luminance, 2.0/(shadows+1.0))) - luminance, 0.0, 1.0);          highp float highlight = clamp((1.0 - (pow(1.0-luminance, 1.0/(2.0-highlights)) + (-0.8)*pow(1.0-luminance, 2.0/(2.0-highlights)))) - luminance, -1.0, 0.0);     highp vec3 result = vec3(0.0, 0.0, 0.0);     if(luminance > 0.0) result = result + ((luminance + shadow + highlight) - 0.0) * ((color - result)/(luminance - 0.0));          return result; } highp vec3 handleWhiteBalance(highp vec3 color) {     if(temperature == 0.0) return color;          highp vec3 yiq = RGBtoYIQ * color;     yiq.b = clamp(yiq.b, -0.5226, 0.5226);     highp vec3 rgb = YIQtoRGB * yiq;          highp vec3 processed = vec3(                                 (rgb.r < 0.5 ? (2.0 * rgb.r * warmFilter.r) : (1.0 - 2.0 * (1.0 - rgb.r) * (1.0 - warmFilter.r))),                                 (rgb.g < 0.5 ? (2.0 * rgb.g * warmFilter.g) : (1.0 - 2.0 * (1.0 - rgb.g) * (1.0 - warmFilter.g))),                                 (rgb.b < 0.5 ? (2.0 * rgb.b * warmFilter.b) : (1.0 - 2.0 * (1.0 - rgb.b) * (1.0 - warmFilter.b))));          return mix(rgb, processed, temperature); }highp vec3 handleVignette(highp vec3 textureColor){     float d = distance(textureCoordinate, vec2(vignetteCenter.x, vignetteCenter.y));     float percent = smoothstep(vignetteStart, vignetteEnd, d);     return vec3(mix(textureColor.rgb, vignetteColor, percent));}\n\n\nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\n\nhighp vec4 handleSharpen(highp vec3 textureColor)\n{\n    mediump vec3 leftTextureColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\n    mediump vec3 rightTextureColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\n    mediump vec3 topTextureColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\n    mediump vec3 bottomTextureColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\n\n    return vec4((textureColor * centerMultiplier - (leftTextureColor * edgeMultiplier + rightTextureColor * edgeMultiplier + topTextureColor * edgeMultiplier + bottomTextureColor * edgeMultiplier)), texture2D(inputImageTexture, bottomTextureCoordinate).w);\n}\n\n void main(){    highp vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;     \t textureColor = handleSharpen(textureColor).rgb;    textureColor = handleVignette(textureColor);    textureColor = handleHighlightsShadows(textureColor);    textureColor = handleBrightness(textureColor);    textureColor = handleContrast(textureColor);    textureColor = handleSaturation(textureColor);    textureColor = handleExposure(textureColor);    textureColor = handleWhiteBalance(textureColor);    gl_FragColor = vec4(textureColor,1.0);}"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b:F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e:F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f:F

    const v2, 0x459c4000    # 5000.0f

    iput v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g:F

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->p:Landroid/graphics/PointF;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->r:[F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->t:F

    iput v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->v:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->z:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a:F

    return v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object p0
.end method

.method private a(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->h:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->p:Landroid/graphics/PointF;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->p:Landroid/graphics/PointF;

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->o:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private a([F)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->r:[F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->r:[F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->q:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setVec3([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private b()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b:F

    return v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->x:I

    return p0
.end method

.method private b(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->i:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private c()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c:F

    return v0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->y:I

    return p0
.end method

.method private c(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->j:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d:F

    return v0
.end method

.method private d(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->k:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private e()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e:F

    return v0
.end method

.method private e(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->l:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f:F

    return v0
.end method

.method private f(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->m:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private g()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g:F

    return v0
.end method

.method private g(F)V
    .locals 7

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g:F

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

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->n:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private h(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->t:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->t:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->s:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method private i(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->v:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->v:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->u:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method public getSharpness()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->z:F

    return v0
.end method

.method protected initLightVignetteFilter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteCenter"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->o:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteColor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->q:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteStart"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->s:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "vignetteEnd"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->u:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->p:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->r:[F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a([F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->t:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->h(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->v:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->i(F)V

    return-void
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 5

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    const-string v0, "brightness"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a()F

    move-result v1

    const v2, -0x41333333    # -0.4f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "contrast"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3fe66666    # 1.8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "saturation"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "exposure"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d()F

    move-result v1

    const/high16 v4, -0x3fe00000    # -2.5f

    invoke-virtual {p1, v0, v1, v4, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "shadows"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "highlights"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;F)V

    const-string v0, "temperature"

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g()F

    move-result v1

    const v2, 0x455ac000    # 3500.0f

    const v4, 0x45ea6000    # 7500.0f

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "vignette"

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->t:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    const-string v0, "sharpness"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->getSharpness()F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-object p1
.end method

.method protected initSharpnessFilter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "sharpness"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->w:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "imageWidthFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->x:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "imageHeightFactor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->y:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->z:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setSharpness(F)V

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "brightness"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->h:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "contrast"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->i:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "saturation"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->j:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "exposure"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->k:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "shadows"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->l:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "highlights"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->m:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "temperature"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->n:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f(F)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->initLightVignetteFilter()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->initSharpnessFilter()V

    return-void
.end method

.method public setSharpness(F)V
    .locals 2

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->z:F

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->z:F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->w:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

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

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a([F)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->a(F)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "contrast"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->b(F)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "saturation"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->c(F)V

    goto :goto_0

    :cond_3
    const-string v0, "exposure"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->d(F)V

    goto :goto_0

    :cond_4
    const-string v0, "shadows"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->e(F)V

    goto :goto_0

    :cond_5
    const-string v0, "highlights"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->f(F)V

    goto :goto_0

    :cond_6
    const-string v0, "temperature"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->g(F)V

    goto :goto_0

    :cond_7
    const-string v0, "vignette"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->h(F)V

    goto :goto_0

    :cond_8
    const-string v0, "sharpness"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/colors/TuSDKMultipleAdjustmentFilter;->setSharpness(F)V

    :cond_9
    :goto_0
    return-void
.end method
