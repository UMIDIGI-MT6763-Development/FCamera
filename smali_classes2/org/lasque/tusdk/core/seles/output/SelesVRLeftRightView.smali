.class public Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;
.super Lorg/lasque/tusdk/core/seles/output/SelesBaseView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    return-object p0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->e:F

    return p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->b:I

    return p0
.end method


# virtual methods
.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "precision highp float;varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;uniform highp float aspectRatio;uniform highp vec4 aspheric;uniform highp vec4 aspectRegion;highp vec2 handleCorpCoord(highp vec2 coord, highp vec4 region){\t\tvec2 hCoord = vec2(coord);\t\tif(hCoord.y > 0.5){hCoord.y = hCoord.y - 0.5;}\t\thighp vec2 rCoord = (hCoord - region.xy) / region.zw;\t\trCoord.y = rCoord.y * 2.0;     return rCoord;}void main(){     vec2 cord = handleCorpCoord(textureCoordinate, aspectRegion);     highp vec2 textureCoordinateToUse = vec2(cord.x, (cord.y * aspectRatio + 0.5 - 0.5 * aspectRatio));     highp float dist = distance(aspheric.xy, textureCoordinateToUse);     textureCoordinateToUse = cord;     if (dist < aspheric.z)     {        textureCoordinateToUse -= aspheric.xy;        highp float percent = 1.0 + ((0.5 - dist) / 0.5) * aspheric.w;        textureCoordinateToUse = textureCoordinateToUse * percent;        textureCoordinateToUse += aspheric.xy;\t\t   if(textureCoordinateToUse != clamp(textureCoordinateToUse, 0.0, 1.0)){        \t\tgl_FragColor = vec4(0.0);        }else{        \t\tgl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse);\t\t   }     }     else     {       gl_FragColor = vec4(0.0);     }}"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->setShader(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspheric"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRegion"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->c:I

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    const v0, -0x420a3d71    # -0.12f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->e:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->recalculateViewGeometry()V

    return-void
.end method

.method protected recalculateViewGeometry()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v2, 0x2

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v3}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [F

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    aput v4, v3, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->c:I

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->f:Landroid/graphics/PointF;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a()V

    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->d:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->e:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesVRLeftRightView;->a()V

    return-void
.end method
