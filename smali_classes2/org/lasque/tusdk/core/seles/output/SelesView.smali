.class public Lorg/lasque/tusdk/core/seles/output/SelesView;
.super Lorg/lasque/tusdk/core/seles/output/SelesBaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

.field private b:Landroid/graphics/RectF;


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

.method private a()V
    .locals 15

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioOutsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v2, v5

    iget-object v7, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->b:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v7, v6

    add-float/2addr v4, v7

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v0, v7

    mul-float/2addr v5, v3

    iget-object v7, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->b:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v7

    add-float/2addr v0, v5

    const/16 v5, 0x8

    new-array v7, v5, [F

    neg-float v8, v4

    const/4 v9, 0x0

    aput v8, v7, v9

    neg-float v10, v3

    const/4 v11, 0x1

    aput v10, v7, v11

    sub-float/2addr v6, v4

    const/4 v4, 0x2

    aput v6, v7, v4

    const/4 v12, 0x3

    aput v10, v7, v12

    const/4 v10, 0x4

    aput v8, v7, v10

    const/4 v8, 0x5

    aput v3, v7, v8

    const/4 v13, 0x6

    aput v6, v7, v13

    const/4 v6, 0x7

    aput v3, v7, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v14, v1

    if-gez v1, :cond_0

    new-array v7, v5, [F

    neg-float v1, v2

    aput v1, v7, v9

    const/high16 v5, -0x40000000    # -2.0f

    mul-float/2addr v3, v5

    add-float/2addr v3, v0

    aput v3, v7, v11

    aput v2, v7, v4

    aput v3, v7, v12

    aput v1, v7, v10

    aput v0, v7, v8

    aput v2, v7, v13

    aput v0, v7, v6

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFillMode()Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->a:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    return-object v0
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->PreserveAspectRatio:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->a:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    const-string v0, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setShader(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected recalculateViewGeometry()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->b:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/seles/output/SelesView$3;->a:[I

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->a:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_0

    move v0, v3

    goto :goto_0

    :pswitch_0
    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float v3, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    const/16 v1, 0x8

    new-array v1, v1, [F

    neg-float v2, v3

    aput v2, v1, v5

    const/4 v4, 0x1

    neg-float v6, v0

    aput v6, v1, v4

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x3

    aput v6, v1, v4

    const/4 v4, 0x4

    aput v2, v1, v4

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayRect(Landroid/graphics/RectF;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->b:Landroid/graphics/RectF;

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesView$2;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFillMode(Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesView;->a:Lorg/lasque/tusdk/core/seles/output/SelesView$SelesFillModeType;

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method
