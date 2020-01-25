.class public Lcom/freeme/camera/ui/GridLines;
.super Landroid/view/View;
.source "GridLines.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


# instance fields
.field private mDrawBounds:Landroid/graphics/RectF;

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/freeme/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/GridLines;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/freeme/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/GridLines;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    int-to-float v3, v1

    mul-float v4, v0, v3

    iget-object v5, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float v7, v5, v4

    iget-object v5, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float v9, v5, v4

    iget-object v4, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/freeme/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v7, v4, v3

    iget-object v4, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float v9, v4, v3

    iget-object v10, p0, Lcom/freeme/camera/ui/GridLines;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/GridLines;->setDrawBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setDrawBounds(Landroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/GridLines;->mDrawBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/GridLines;->invalidate()V

    return-void
.end method
