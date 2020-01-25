.class public Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;
.super Landroid/view/View;
.source "ColorRectView.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final DEFAULT_STROKE_WIDTH:I = 0x5

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mColor:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/freeme/camera/R$styleable;->colorRectView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, -0x10000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static isRectArrayEqual([Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-object v3, p0, v2

    if-nez v3, :cond_4

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    return v1

    :cond_4
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iput p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRectPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mPointPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRects([Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRects:[Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->isRectArrayEqual([Landroid/graphics/Rect;[Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->mRects:[Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->invalidate()V

    :cond_0
    return-void
.end method
