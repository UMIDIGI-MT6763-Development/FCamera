.class public Lorg/lasque/tusdk/core/seles/output/SelesSmartView;
.super Lorg/lasque/tusdk/core/seles/output/SelesBaseView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/output/SelesSmartView;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->c:I

    return p0
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    const-string v0, "precision highp float;varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;uniform highp vec2 aspectRatio;uniform highp vec4 aspectRegion;uniform highp vec4 backgroundColor;highp vec2 handleCorpCoord(highp vec2 coord, highp vec2 ratio, highp vec4 region){     highp vec2 rCoord = (coord - region.xy) / region.zw;     return ratio * rCoord + (1.0 - ratio) * 0.5;}void main(){     highp vec4 fColor = backgroundColor;     if(any(lessThan(textureCoordinate, aspectRegion.xy)) || any(lessThan(aspectRegion.xy + aspectRegion.zw, textureCoordinate))){         fColor = backgroundColor;     }else{         fColor = texture2D(inputImageTexture, handleCorpCoord(textureCoordinate, aspectRatio, aspectRegion));     }     gl_FragColor = fColor;}"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->setShader(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRatio"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->a:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "aspectRegion"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->c:I

    return-void
.end method

.method protected recalculateViewGeometry()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v5, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    aput v5, v0, v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    aput v5, v0, v3

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    aput v5, v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->a:I

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->b:I

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setBackgroundColor(FFFF)V

    new-instance v6, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$2;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesSmartView;FFFF)V

    invoke-virtual {p0, v6}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->d:Landroid/graphics/RectF;

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesSmartView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSmartView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
