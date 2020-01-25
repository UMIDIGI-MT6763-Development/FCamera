.class public Lcom/freeme/camera/ui/SwitchAnimView;
.super Landroid/view/View;
.source "SwitchAnimView.java"


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mBgColor:I

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mHeightScale:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPreviewRatio:I

.field private mPreviewRoot:Landroid/view/View;

.field private mRect:Landroid/graphics/RectF;

.field private mScreenRatio:I

.field private mWidthScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRatio:I

    iput p2, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mScreenRatio:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mBgColor:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private changeBitmapSize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v0, v3

    div-float/2addr p2, v0

    int-to-float v0, v4

    div-float/2addr p3, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRoot:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    iget-object v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    iget-object v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v5

    iput v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRatio:I

    iget-object v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-static {v5}, Lcom/freeme/camera/common/utils/CameraUtil;->geScreenRatio(Lcom/freeme/camera/common/app/IApp;)I

    move-result v5

    iput v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mScreenRatio:I

    iget v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mScreenRatio:I

    const/4 v6, 0x6

    if-ne v5, v4, :cond_1

    iget v1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRatio:I

    if-eq v1, v0, :cond_0

    if-ne v1, v6, :cond_f

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto/16 :goto_2

    :cond_1
    const/16 v7, 0x8

    if-ne v5, v7, :cond_6

    iget v5, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRatio:I

    if-eq v5, v0, :cond_5

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v5, v4, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto/16 :goto_2

    :cond_3
    if-ne v5, v7, :cond_4

    goto/16 :goto_2

    :cond_4
    move v2, v1

    goto/16 :goto_2

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto/16 :goto_2

    :cond_6
    iget v1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRatio:I

    if-eq v1, v0, :cond_c

    if-ne v1, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x5

    if-ne v1, v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v0, 0x9

    if-ne v1, v0, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_c
    :goto_1
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasNotch()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->hasWaterDrop()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_f
    :goto_2
    iget v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v4, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-direct {p0, v0, v1, v4}, Lcom/freeme/camera/ui/SwitchAnimView;->changeBitmapSize(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method public setApp(Lcom/freeme/camera/common/app/IApp;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mPreviewRoot:Landroid/view/View;

    return-void
.end method

.method public setSwitchAnimInfo(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p2, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/freeme/camera/ui/SwitchAnimView;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/SwitchAnimView;->invalidate()V

    return-void
.end method
