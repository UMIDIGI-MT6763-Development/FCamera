.class public Lcom/freeme/camera/common/widget/RotateStrokeTextView;
.super Lcom/freeme/camera/common/widget/TwoStateTextView;
.source "RotateStrokeTextView.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final STROKE_ALPHA:I = 0x7f

.field private static final STROKE_WIDTH_DP:F = 0.5f


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mStrokeWidth:F

.field private mTargetDegree:I

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    iput p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mStartDegree:I

    iput p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mClockwise:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mEnableAnimation:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationStartTime:J

    iput-wide v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationEndTime:J

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->dip2Px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mStrokeWidth:F

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setGravity(I)V

    return-void
.end method

.method private static dip2Px(Landroid/content/Context;F)F
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private setTextColorUseReflection(I)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCurTextColor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mStartDegree:I

    iget-boolean v2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mClockwise:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_2
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    :goto_1
    iput v1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->invalidate()V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    iput v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setTextColorUseReflection(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/TwoStateTextView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setTextColorUseReflection(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/TwoStateTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/widget/TwoStateTextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    iget-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mEnableAnimation:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationStartTime:J

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

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
    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mClockwise:Z

    iget-wide v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mAnimationEndTime:J

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mTargetDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->mCurrentDegree:I

    :goto_3
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateStrokeTextView;->invalidate()V

    return-void
.end method
