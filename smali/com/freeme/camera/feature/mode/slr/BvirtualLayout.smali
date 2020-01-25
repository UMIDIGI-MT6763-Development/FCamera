.class public Lcom/freeme/camera/feature/mode/slr/BvirtualLayout;
.super Landroid/widget/RelativeLayout;
.source "BvirtualLayout.java"


# instance fields
.field private mBvirtualView:Lcom/freeme/camera/feature/mode/slr/BvirtualView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/slr/BvirtualLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/slr/BvirtualView;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/slr/BvirtualLayout;->mBvirtualView:Lcom/freeme/camera/feature/mode/slr/BvirtualView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/slr/BvirtualLayout;->mBvirtualView:Lcom/freeme/camera/feature/mode/slr/BvirtualView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/slr/BvirtualView;->getmPreviewArea()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/slr/BvirtualLayout;->mBvirtualView:Lcom/freeme/camera/feature/mode/slr/BvirtualView;

    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    iget p4, p1, Landroid/graphics/RectF;->top:F

    float-to-int p4, p4

    iget p5, p1, Landroid/graphics/RectF;->right:F

    float-to-int p5, p5

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/freeme/camera/feature/mode/slr/BvirtualView;->layout(IIII)V

    return-void
.end method
