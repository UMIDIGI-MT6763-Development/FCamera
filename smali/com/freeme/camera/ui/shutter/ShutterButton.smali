.class Lcom/freeme/camera/ui/shutter/ShutterButton;
.super Lcom/freeme/camera/common/widget/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

.field private mLongPressed:Z

.field private mOldPressed:Z

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    nop

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

.method static synthetic access$000(Lcom/freeme/camera/ui/shutter/ShutterButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;->onShutterButtonFocused(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mLongPressed:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->reverse()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isPressed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Lcom/freeme/camera/ui/shutter/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterButton$1;-><init>(Lcom/freeme/camera/ui/shutter/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->callShutterButtonFocus(Z)V

    :goto_0
    iput-boolean v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mOldPressed:Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mLongPressed:Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/common/widget/RotateImageView;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mLongPressed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1}, Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;->onShutterButtonClicked()V

    :cond_0
    return v0
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/RotateImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton;->mListener:Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;

    return-void
.end method
