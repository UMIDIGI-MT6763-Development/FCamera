.class Lcom/freeme/camera/ui/shutter/ShutterView;
.super Landroid/widget/RelativeLayout;
.source "ShutterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/shutter/ShutterView$OnShutterTextClicked;
    }
.end annotation


# static fields
.field private static final THRESHOLD_VALUE:I = 0x2


# instance fields
.field private mCenterX:I

.field private mName:Landroid/widget/TextView;

.field private mScrollDistance:I

.field private mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private mTextClickedListener:Lcom/freeme/camera/ui/shutter/ShutterView$OnShutterTextClicked;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private measureDimension(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private updateShutterView(III)V
    .locals 4

    iget v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mCenterX:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p3, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mScrollDistance:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    if-gt p1, v2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_1
    if-gt p1, v2, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setAlpha(F)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ge p1, p3, :cond_3

    int-to-float p1, p1

    mul-float/2addr p1, v3

    int-to-float p2, p3

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    sub-float/2addr v3, p1

    invoke-virtual {p2, v3}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setAlpha(F)V

    goto :goto_0

    :cond_3
    if-lt p1, p3, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setAlpha(F)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/shutter/ShutterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/shutter/ShutterButton;

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    const v1, 0x7f0801a9

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    const v1, 0x7f0801a7

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    add-int/lit8 p4, p4, 0x1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p2

    iput p4, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mCenterX:I

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/freeme/camera/ui/shutter/ShutterView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/freeme/camera/ui/shutter/ShutterView;->updateShutterView(III)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/ui/shutter/ShutterButton;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/shutter/ShutterButton;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onScrolled(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/ui/shutter/ShutterView;->updateShutterView(III)V

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnShutterButtonListener(Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mShutter:Lcom/freeme/camera/ui/shutter/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->setOnShutterButtonListener(Lcom/freeme/camera/ui/shutter/ShutterButton$OnShutterButtonListener;)V

    return-void
.end method

.method public setOnShutterTextClickedListener(Lcom/freeme/camera/ui/shutter/ShutterView$OnShutterTextClicked;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mTextClickedListener:Lcom/freeme/camera/ui/shutter/ShutterView$OnShutterTextClicked;

    return-void
.end method

.method public setTextEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mType:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/freeme/camera/ui/shutter/ShutterView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterView;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
