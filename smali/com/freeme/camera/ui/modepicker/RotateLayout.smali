.class public Lcom/freeme/camera/ui/modepicker/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/modepicker/RotateLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mChild:Landroid/view/View;

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mListener:Lcom/freeme/camera/ui/modepicker/RotateLayout$OnSizeChangedListener;

.field private mOrientation:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/modepicker/RotateLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mStartDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mEnableAnimation:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationStartTime:J

    iput-wide v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationEndTime:J

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mStartDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationStartTime:J

    iput-wide p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationEndTime:J

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mOrientation:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    iget v1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-wide v2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mStartDegree:I

    iget-boolean v2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mClockwise:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_1
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    :goto_1
    iput v1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->invalidate()V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iput v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getHeight()I

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

    iget v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mOrientation:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/16 p3, 0x5a

    if-eq p1, p3, :cond_1

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_2

    const/16 p3, 0x10e

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p3, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mListener:Lcom/freeme/camera/ui/modepicker/RotateLayout$OnSizeChangedListener;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/freeme/camera/ui/modepicker/RotateLayout$OnSizeChangedListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3

    const/16 v0, 0x10e

    const/16 v1, 0xb4

    if-eqz p1, :cond_0

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    sget-object p2, Lcom/freeme/camera/ui/modepicker/RotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation : Not support degree = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mEnableAnimation:Z

    if-ltz p1, :cond_1

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_1
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget p2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mOrientation:I

    iget-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mEnableAnimation:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationStartTime:J

    iget p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iget p2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit16 p1, p1, 0x168

    :goto_1
    if-le p1, v1, :cond_4

    add-int/lit16 p1, p1, -0x168

    :cond_4
    if-ltz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mClockwise:Z

    iget-wide v1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationStartTime:J

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/2addr p1, v0

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mAnimationEndTime:J

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mTargetDegree:I

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/RotateLayout;->mCurrentDegree:I

    :goto_3
    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/RotateLayout;->invalidate()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
