.class public Lcom/freeme/camera/feature/mode/iko/MaskView;
.super Landroid/view/View;
.source "MaskView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MaskView"


# instance fields
.field private mBottom:I

.field private mCorLength:I

.field private mCorWidth:I

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mLeft:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/feature/mode/iko/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/MaskView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/MaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/MaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    int-to-float v2, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    int-to-float v3, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    int-to-float v2, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    int-to-float v3, v1

    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    int-to-float v2, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    int-to-float v2, v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    sub-int v2, v1, v2

    int-to-float v4, v2

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorLength:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCorWidth:I

    sub-int v2, v1, v2

    int-to-float v4, v2

    int-to-float v5, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setRect(IIII)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mLeft:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mTop:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mRight:I

    iput p4, p0, Lcom/freeme/camera/feature/mode/iko/MaskView;->mBottom:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/iko/MaskView;->invalidate()V

    return-void
.end method
