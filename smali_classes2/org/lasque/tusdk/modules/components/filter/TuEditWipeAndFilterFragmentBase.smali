.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

# interfaces
.implements Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;
.implements Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;


# instance fields
.field private a:F

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->b:Z

    return-void
.end method

.method private a(Landroid/graphics/PointF;I)Landroid/graphics/Bitmap;
    .locals 13

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getOriginalBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getSmudgeBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float p2, p2

    div-float/2addr v8, p2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v10, p1, Landroid/graphics/PointF;->x:F

    int-to-float v11, v0

    mul-float/2addr v8, v11

    div-float v12, v8, v9

    sub-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    float-to-int v8, v8

    add-int/2addr v10, v8

    iput v10, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v8

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    div-float/2addr v2, v9

    iget p2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v2

    div-float v2, v11, v9

    sub-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, v7, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v7, Landroid/graphics/Rect;->top:I

    iget p1, v7, Landroid/graphics/Rect;->left:I

    float-to-int p2, v11

    add-int/2addr p1, p2

    iput p1, v7, Landroid/graphics/Rect;->right:I

    iget p1, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getBrushSizePixel()I

    move-result p1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v5, v0, v0, p1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v4
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->isShowResultPreview()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getCanvasImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public getBrushStrength()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->a:F

    return v0
.end method

.method public abstract getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;
.end method

.method public abstract getZoomInImage()Landroid/widget/ImageView;
.end method

.method protected handleBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->handleBackButton()V

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase$2;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected handleOrigianlButtonDown()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->showOriginalImage(Z)V

    :cond_0
    return-void
.end method

.method protected handleOrigianlButtonUp()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->showOriginalImage(Z)V

    :cond_0
    return-void
.end method

.method protected handleRedoButton()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->redo()V

    :cond_0
    return-void
.end method

.method protected handleUndoButton()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->undo()V

    :cond_0
    return-void
.end method

.method public isDisplayMagnifier()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->b:Z

    return v0
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editWipeAndFilterFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getZoomInImage()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getZoomInImage()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->showView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->destroy()V

    :cond_0
    return-void
.end method

.method public onRefreshStepStatesWithHistories(II)V
    .locals 0

    return-void
.end method

.method public onSmudgeChanged(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getZoomInImage()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->isDisplayMagnifier()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getZoomInImage()Landroid/widget/ImageView;

    move-result-object p2

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float v3, p3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_4

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    iget v1, p1, Landroid/graphics/PointF;->y:F

    int-to-float p4, p4

    cmpl-float p4, v1, p4

    if-lez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p4}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->showView(Landroid/view/View;Z)V

    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    const/16 v2, 0x9

    const/16 v3, 0xb

    if-gez v1, :cond_3

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    invoke-virtual {p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p3}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->a(Landroid/graphics/PointF;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->showView(Landroid/view/View;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onSmudgeEnd()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getZoomInImage()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method protected setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V

    :cond_0
    return-void
.end method

.method public setBrushStrength(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->a:F

    :cond_0
    return-void
.end method

.method public setDisplayMagnifier(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->b:Z

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->setActionDelegate(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "blurSize"

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditWipeAndFilterFragmentBase;->getBrushStrength()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->setFilterArg(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_1
    return-void
.end method
