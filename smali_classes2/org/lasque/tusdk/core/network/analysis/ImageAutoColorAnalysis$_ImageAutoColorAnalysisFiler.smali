.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_ImageAutoColorAnalysisFiler"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "precision lowp float;varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;uniform lowp vec4 maxRGBA;uniform lowp vec4 minRGBA;uniform lowp vec3 midRGB;highp vec3 handleAutoTone(highp vec3 color){\thighp vec3 nColor = (color - minRGBA.rgb) / (maxRGBA.rgb - minRGBA.rgb);\treturn nColor;}highp vec3 handleAutoColor(highp vec3 color){\thighp vec3 nColor = handleAutoTone(color);\thighp vec3 alphaM = nColor * (0.5 / midRGB);\thighp vec3 alphaP = (nColor - midRGB) * (0.5 / (1.0 - midRGB)) + 0.5;\thighp float r = nColor.r < midRGB.r ? alphaM.r : alphaP.r;\thighp float g = nColor.g < midRGB.g ? alphaM.g : alphaP.g;\thighp float b = nColor.b < midRGB.b ? alphaM.b : alphaP.b;\treturn vec3(r,g,b);}void main(){\thighp vec3 textureColor = texture2D(inputImageTexture, textureCoordinate).rgb;\ttextureColor = handleAutoColor(textureColor);\tgl_FragColor = vec4(textureColor, 1.0);}"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxR:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxG:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxB:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxY:F

    const/4 v1, 0x0

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minR:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minG:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minB:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minY:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midR:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midG:F

    iput v1, v0, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midB:F

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;-><init>()V

    return-void
.end method

.method private a()Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a()Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    move-result-object p0

    return-object p0
.end method

.method private a(FFF)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$3;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;FFF)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(FFFF)V
    .locals 7

    new-instance v6, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;FFFF)V

    invoke-virtual {p0, v6}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    iget v0, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxR:F

    iget v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxG:F

    iget v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxB:F

    iget v3, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->maxY:F

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(FFFF)V

    iget v0, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minR:F

    iget v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minG:F

    iget v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minB:F

    iget v3, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->minY:F

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->b(FFFF)V

    iget v0, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midR:F

    iget v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midG:F

    iget p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;->midB:F

    invoke-direct {p0, v0, v1, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(FFF)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method private b(FFFF)V
    .locals 7

    new-instance v6, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler$2;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;FFFF)V

    invoke-virtual {p0, v6}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a:I

    return p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->b:I

    return p0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->c:I

    return p0
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "maxRGBA"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "minRGBA"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "midRGB"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->d:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    return-void
.end method
