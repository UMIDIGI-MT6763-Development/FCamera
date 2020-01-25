.class public Lcom/freeme/camera/common/widget/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field protected mChild:Landroid/view/View;

.field private mListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/widget/RotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/widget/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

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
    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/freeme/camera/common/widget/RotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/freeme/camera/common/widget/RotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/freeme/camera/common/widget/RotateLayout;->setMeasuredDimension(II)V

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mChild:Landroid/view/View;

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p3, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mListener:Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_0

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/freeme/camera/common/widget/RotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrientation : Not support orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    iget p2, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/freeme/camera/common/widget/RotateLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/freeme/camera/common/widget/RotateLayout;->requestLayout()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
