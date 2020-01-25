.class public Lcom/freeme/camera/common/widget/RotateImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mDrawableBitmap:Landroid/graphics/Bitmap;

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mStartDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationStartTime:J

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    if-eqz v4, :cond_a

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ne v3, v6, :cond_2

    instance-of v3, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v6, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v0, v2, v2, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    iget v2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    if-eq v1, v2, :cond_6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationEndTime:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_5

    iget-wide v6, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    iget v2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mStartDegree:I

    iget-boolean v3, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mClockwise:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v2, v1

    if-ltz v2, :cond_4

    rem-int/lit16 v2, v2, 0x168

    goto :goto_1

    :cond_4
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    :goto_1
    iput v2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->invalidate()V

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    sub-int/2addr v3, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8

    if-lt v7, v4, :cond_7

    if-ge v3, v5, :cond_8

    :cond_7
    int-to-float v8, v7

    int-to-float v9, v4

    div-float v9, v8, v9

    int-to-float v10, v3

    int-to-float v11, v5

    div-float v11, v10, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_8
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mDrawableBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mEnableAnimation:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v2, p1, v1

    aput-object v2, p1, v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget p2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    iget-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mEnableAnimation:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationStartTime:J

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mClockwise:Z

    iget-wide v0, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mAnimationEndTime:J

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mTargetDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateImageView;->mCurrentDegree:I

    :goto_3
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->invalidate()V

    return-void
.end method
