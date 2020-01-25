.class public Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;
.super Landroid/view/View;
.source "PortraitVirtualView.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;
.implements Lcom/freeme/camera/common/widget/Rotatable;
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;


# static fields
.field private static final IN_SHARPNESS_RADIUS:I = 0xc8

.field private static final OUT_SHARPNESS_RADIUS:I = 0x140

.field private static REFERENCE_ASPECT_SIZE:I = 0x2d0

.field private static final SHOW_PREVIEW_DEBUG_LOG:Z = false

.field private static SUPPORT_MAX_ASPECT_SIZE:I = 0x2d0

.field private static final TAG:Ljava/lang/String; = "PortraitVirtualView"


# instance fields
.field public mApp:Lcom/freeme/camera/common/app/IApp;

.field private mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

.field private mBlurDegress:I

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleInRadius:F

.field private mCircleOutGreen:Landroid/graphics/Bitmap;

.field private mCircleOutRadius:F

.field private mCircleOutWhite:Landroid/graphics/Bitmap;

.field private mDown:Landroid/view/MotionEvent;

.field private mIsCancelDiaphragm:Z

.field private mIsFousing:Z

.field private mIsInSeekbarArea:Z

.field private mOnSingleX:I

.field private mOnSingleY:I

.field private mOrientation:I

.field private mPFDF:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPaint:Landroid/graphics/Paint;

.field private mPartBitmap:Landroid/graphics/Bitmap;

.field private mPartRadius:F

.field private mPath:Landroid/graphics/Path;

.field private mPortraitMode:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

.field private mPreviewArea:Landroid/graphics/RectF;

.field private mRectF:Landroid/graphics/RectF;

.field private mRotationMatrix:Landroid/graphics/Matrix;

.field private mSeekbarPoint:Landroid/graphics/Bitmap;

.field private mSlop:I

.field private mSphereSize:F

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private mTranslateYProgess:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsFousing:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsCancelDiaphragm:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080117

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutGreen:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSeekbarPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSeekbarPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSphereSize:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRotationMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPFDF:Landroid/graphics/PaintFlagsDrawFilter;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutRadius:F

    iget p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutRadius:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleInRadius:F

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleInRadius:F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, p2, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 p2, 0x4

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    new-instance p2, Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    invoke-direct {p2, p1}, Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    return-void
.end method

.method private compulateSeekbarCoordinate(Z)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartRadius:F

    sub-float/2addr p1, v2

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSphereSize:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/PointF;->x:F

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSphereSize:F

    add-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    :goto_2
    return-object v0
.end method

.method private computeCenterCoordinate(FF)V
    .locals 4

    float-to-int v0, p1

    float-to-int v1, p2

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPartRadius:F

    float-to-int v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    int-to-float p1, v2

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    :goto_0
    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v2

    if-gt v1, p1, :cond_2

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    goto :goto_1

    :cond_2
    if-ge v1, v2, :cond_3

    int-to-float p1, v2

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    :goto_1
    return-void
.end method

.method private drawDiaphragm(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsCancelDiaphragm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutRadius:F

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRotationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCircleOutRadius:F

    sub-float/2addr v1, v3

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    sub-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->isScreenPortrait()Z

    move-result v0

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->compulateSeekbarCoordinate(Z)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget v7, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v3

    iget v9, v2, Landroid/graphics/PointF;->x:F

    int-to-float v10, v0

    iget-object v11, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSeekbarPoint:Landroid/graphics/Bitmap;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSphereSize:F

    div-float/2addr v6, v5

    sub-float/2addr v2, v6

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    int-to-float v6, v6

    iget v9, v2, Landroid/graphics/PointF;->y:F

    int-to-float v10, v0

    iget v11, v2, Landroid/graphics/PointF;->y:F

    iget-object v12, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSeekbarPoint:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v3, v1

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSphereSize:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v6, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private drawTrueBgVirtualWithCanvas(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    int-to-float v2, v0

    sget v3, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->REFERENCE_ASPECT_SIZE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget v3, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->SUPPORT_MAX_ASPECT_SIZE:I

    const/4 v4, 0x1

    if-le v0, v3, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mApp:Lcom/freeme/camera/common/app/IApp;

    if-nez v5, :cond_4

    return-void

    :cond_4
    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v5}, Lcom/freeme/camera/ui/CameraAppUI;->getmPreviewManager()Lcom/freeme/camera/ui/preview/PreviewManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/freeme/camera/ui/preview/PreviewManager;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    sub-float/2addr v3, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v3, v5

    :goto_2
    iget v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    if-ge v3, v4, :cond_6

    iput v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    goto :goto_3

    :cond_6
    const/16 v4, 0x8

    if-le v3, v4, :cond_7

    iput v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    iget v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    invoke-virtual {v3, v0, v4}, Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/bvirtual/BlurInfo;

    invoke-direct {v4}, Lcom/bvirtual/BlurInfo;-><init>()V

    iget v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v4, Lcom/bvirtual/BlurInfo;->x:I

    iget v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v4, Lcom/bvirtual/BlurInfo;->y:I

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    div-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v4, Lcom/bvirtual/BlurInfo;->inRadius:I

    const/high16 v5, 0x43a00000    # 320.0f

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v4, Lcom/bvirtual/BlurInfo;->outRadius:I

    invoke-static {v3, v0, v4}, Lcom/bvirtual/SmoothBlurJni;->smoothRender(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/bvirtual/BlurInfo;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    return-void
.end method

.method private isInSeekbarSlideArea(FF)Z
    .locals 7

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->isScreenPortrait()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->compulateSeekbarCoordinate(Z)Landroid/graphics/PointF;

    move-result-object v0

    float-to-int p1, p1

    float-to-int p2, p2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    float-to-int v0, v0

    if-lt p1, v1, :cond_0

    if-lt v5, p1, :cond_0

    if-lt p2, v2, :cond_0

    if-lt v0, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isScreenPortrait()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public blendJpegData([B)[B
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    array-length v5, p1

    const/4 v6, 0x0

    invoke-static {p1, v6, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    const-string p1, "PortraitVirtualView"

    const-string v0, "src_bitmap = null, blendOutput() fail!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v0, "PortraitVirtualView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode rawData :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    if-nez v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->REFERENCE_ASPECT_SIZE:I

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPortraitMode:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/portrait/PortraitMode;->mCameraId:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    iget-object v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateMatrix:Landroid/graphics/Matrix;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_4
    move v0, v8

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    const/4 v10, 0x2

    div-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v10

    int-to-float v11, v11

    invoke-virtual {v7, v0, v8, v9, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    new-array v0, v10, [F

    iget v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    aput v7, v0, v6

    iget v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    aput v7, v0, v4

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v0, v6

    float-to-int v6, v6

    aget v0, v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    iget v7, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, p1, v7}, Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "PortraitVirtualView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blur bitmap :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v2

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v7, Lcom/bvirtual/BlurInfo;

    invoke-direct {v7}, Lcom/bvirtual/BlurInfo;-><init>()V

    iput v6, v7, Lcom/bvirtual/BlurInfo;->x:I

    iput v0, v7, Lcom/bvirtual/BlurInfo;->y:I

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v7, Lcom/bvirtual/BlurInfo;->inRadius:I

    const/high16 v0, 0x43a00000    # 320.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, v5

    float-to-int v0, v1

    iput v0, v7, Lcom/bvirtual/BlurInfo;->outRadius:I

    invoke-static {v4, p1, v7}, Lcom/bvirtual/SmoothBlurJni;->smoothRender(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/bvirtual/BlurInfo;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "PortraitVirtualView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blend bitmap :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {v4, v3, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v3, "PortraitVirtualView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compress rawData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v0

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "PortraitVirtualView"

    const-string v2, "blendOutput() fail!"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getmBlurDegress()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    return v0
.end method

.method public getmPreviewArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlur:Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/portrait/GaussianBlur;->destoryBlur()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mDown:Landroid/view/MotionEvent;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsInSeekbarArea:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->isInSeekbarSlideArea(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsInSeekbarArea:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPFDF:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->drawTrueBgVirtualWithCanvas(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iput p5, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterX:F

    iget p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mCenterY:F

    const-string p1, "PortraitVirtualView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout mOnSingleX:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mOnSingleY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLongPress(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    const-string p1, "PortraitVirtualView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure,width:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",height:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsInSeekbarArea:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float p2, p4, p1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->isScreenPortrait()Z

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_5

    iget p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    mul-float/2addr p2, v1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    iget p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    cmpg-float p2, p1, v3

    if-gez p2, :cond_0

    iput v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    iput v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->invalidate()V

    goto :goto_2

    :cond_2
    div-float p1, p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    iget p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    iget p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    cmpg-float p2, p1, v3

    if-gez p2, :cond_3

    iput v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    goto :goto_1

    :cond_3
    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    iput v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mTranslateYProgess:F

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->invalidate()V

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mDown:Landroid/view/MotionEvent;

    const/4 p3, 0x0

    if-nez p1, :cond_7

    return p3

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    sub-float/2addr p1, p4

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mDown:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSlop:I

    if-gt p2, v0, :cond_8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mSlop:I

    if-le p2, v0, :cond_a

    :cond_8
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p1, p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    :cond_a
    :goto_3
    return p3
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(II)V
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->computeCenterCoordinate(FF)V

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleX:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOnSingleY:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->invalidate()V

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsInSeekbarArea:Z

    return p1
.end method

.method public setFaces([Lcom/freeme/camera/feature/setting/facedetection/Face;I)V
    .locals 6

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity;->showOrNotFFBNoFaceIndicator(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    if-le v2, v0, :cond_0

    if-eqz p2, :cond_1

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_1

    :cond_0
    if-le v0, v2, :cond_2

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p2, v3, :cond_2

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v5

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/facedetection/Face;->rect:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->normalizedPreviewToUi(Landroid/graphics/Rect;IIIZ)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v2, 0x40b9999a    # 5.8f

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->onSingleTapUp(II)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsCancelDiaphragm:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsCancelDiaphragm:Z

    :goto_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    rem-int/lit16 p1, p1, 0x168

    iget p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOrientation:I

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mOrientation:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setmBlurDegress(I)V
    .locals 0

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mBlurDegress:I

    return-void
.end method

.method public setmIsCancelDiaphragm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mIsCancelDiaphragm:Z

    return-void
.end method

.method public setmQrCodeScanMode(Lcom/freeme/camera/feature/mode/portrait/PortraitMode;Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mPortraitMode:Lcom/freeme/camera/feature/mode/portrait/PortraitMode;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method
