.class public Lcom/freeme/camera/common/widget/ScaleAnimationButton;
.super Lcom/freeme/camera/common/widget/RotateImageView;
.source "ScaleAnimationButton.java"


# instance fields
.field private mOldPressed:Z

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "scaleX"

    const/4 p2, 0x2

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const-string v0, "scaleY"

    new-array v1, p2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object v0, p2, p1

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->isPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mOldPressed:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->reverse()V

    :goto_0
    iput-boolean v0, p0, Lcom/freeme/camera/common/widget/ScaleAnimationButton;->mOldPressed:Z

    :cond_1
    return-void
.end method
