.class public Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;
.super Landroid/view/View;
.source "MultiZoneAfView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_RATIO:Ljava/lang/String; = "0.4"

.field private static final MZAF_ICON:[I

.field private static final MZAF_INDICATOR_KEY:Ljava/lang/String; = "vendor.multizone.af.window.ratio"

.field private static final SCALING_DOWN_TIME:I = 0xc8

.field private static final SCALING_UP_TIME:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAfIndicator:Landroid/graphics/drawable/Drawable;

.field private mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

.field private mAnimatorRatio:F

.field private mDisplayOrientation:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mOrientation:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRect:Landroid/graphics/RectF;

.field private mScaleRatio:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->MZAF_ICON:[I

    return-void

    :array_0
    .array-data 4
        0x7f0801bc
        0x7f0801bb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mScaleRatio:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAnimatorRatio:F

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->MZAF_ICON:[I

    array-length p1, p1

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->getViewDrawable()[Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfIndicator:Landroid/graphics/drawable/Drawable;

    const-string p1, "vendor.multizone.af.window.ratio"

    const-string p2, "0.4"

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mScaleRatio:F

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAnimatorRatio:F

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;F)F
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAnimatorRatio:F

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mScaleRatio:F

    return p0
.end method

.method private dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getViewDrawable()[Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->MZAF_ICON:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private scale()Landroid/graphics/Rect;
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAnimatorRatio:F

    mul-float v5, v3, v4

    iget v6, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mScaleRatio:F

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v5, v1, v5

    mul-float v8, v3, v4

    mul-float/2addr v8, v6

    div-float/2addr v8, v7

    sub-float v8, v2, v8

    mul-float v9, v3, v4

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    add-float/2addr v1, v9

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-int v3, v5

    float-to-int v4, v8

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mDisplayOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mOrientation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mMirror ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMirror:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mPreviewHeight:I

    if-le v1, v0, :cond_0

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mDisplayOrientation:I

    if-eqz v2, :cond_1

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_1

    :cond_0
    if-ge v1, v0, :cond_2

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mDisplayOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    :cond_1
    move v7, v1

    move v1, v0

    move v0, v7

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMirror:Z

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mDisplayOrientation:I

    invoke-static {v2, v3, v4, v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mOrientation:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    array-length v5, v2

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    const-string v5, "Original rect"

    invoke-direct {p0, v2, v5}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    const-string v5, "Transformed rect"

    invoke-direct {p0, v2, v5}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "window[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ] result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfStatusIndicators:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfIndicator:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mRect:Landroid/graphics/RectF;

    aget v5, v3, v4

    aget v6, v3, v0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->scale()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAfIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mDisplayOrientation:I

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mMirror:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mOrientation:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->invalidate()V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mPreviewWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mPreviewHeight:I

    return-void
.end method

.method public showWindows(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mAnimatorRatio:F

    aput v1, p1, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$1;-><init>(Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public updateFocusWindows([Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->mWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    return-void
.end method
