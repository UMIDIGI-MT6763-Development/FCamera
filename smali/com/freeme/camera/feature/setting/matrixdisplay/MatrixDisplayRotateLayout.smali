.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;
.super Landroid/view/ViewGroup;
.source "MatrixDisplayRotateLayout.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/Rotatable;


# static fields
.field private static final ORIENTATION_OFFSET:I = 0x10e

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private static setOrientation(Landroid/view/View;IZ)V
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p1, "[setOrientation]view is null,return."

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p0, Lcom/freeme/camera/common/widget/Rotatable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p0, p1, p2}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->setOrientation(Landroid/view/View;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->setMeasuredDimension(II)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    const/high16 p2, -0x3c790000    # -270.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOrientation]orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    add-int/lit16 p1, p1, -0x10e

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mChild:Landroid/view/View;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->mOrientation:I

    invoke-static {p1, v0, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->setOrientation(Landroid/view/View;IZ)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayRotateLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
