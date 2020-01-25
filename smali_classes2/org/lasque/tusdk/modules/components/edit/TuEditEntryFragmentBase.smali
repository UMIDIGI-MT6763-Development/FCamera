.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getLimitSideSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getLimitSideSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    :goto_0
    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxImageSide()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final appendStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget v3, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageSizeRatio:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->a()I

    move-result v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageLimit(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public abstract getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end method

.method public getCuterImage()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterResult()Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getRatioTypes()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/image/RatioType;->firstRatio(I)F

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/TuSdkResult;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract getCuterResult()Lorg/lasque/tusdk/core/TuSdkResult;
.end method

.method public getFilterImage()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method public getImageView()Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method public abstract getLimitSideSize()I
.end method

.method public abstract getRatioTypes()[I
.end method

.method public abstract getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;
.end method

.method protected handleCompleteButton()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterResult()Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterResult()Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->cutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCuterResult()Lorg/lasque/tusdk/core/TuSdkResult;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getRatioTypes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/image/RatioType;->firstRatio(I)F

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageSizeRatio:F

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getResults(Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    :cond_2
    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract isLimitForScreen()Z
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImageView()Landroid/view/View;

    return-void
.end method

.method public setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditEntryFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterImageViewInterface;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_0
    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editTurnAndCutFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
