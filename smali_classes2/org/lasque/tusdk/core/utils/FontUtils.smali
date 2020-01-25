.class public Lorg/lasque/tusdk/core/utils/FontUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computBaseline(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget p1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getTextBounds(Ljava/lang/String;F)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static getTextBoundsExcludeFontPadding(Ljava/lang/String;F)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget p0, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, p0

    add-float/2addr p1, v1

    float-to-int p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
