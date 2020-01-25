.class public Lcom/freeme/camera/common/widget/RotateTextView;
.super Lcom/freeme/camera/common/widget/TwoStateTextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/TwoStateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mStartDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationStartTime:J

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationEndTime:J

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateTextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mStartDegree:I

    iget-boolean v2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mClockwise:Z

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
    iput v1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->invalidate()V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    iput v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getHeight()I

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

    iget v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/TwoStateTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/widget/TwoStateTextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lcom/freeme/camera/common/widget/RotateTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget p2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    iget-boolean p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mEnableAnimation:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationStartTime:J

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

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
    iput-boolean p2, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mClockwise:Z

    iget-wide v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mAnimationEndTime:J

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mTargetDegree:I

    iput p1, p0, Lcom/freeme/camera/common/widget/RotateTextView;->mCurrentDegree:I

    :goto_3
    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateTextView;->invalidate()V

    return-void
.end method
