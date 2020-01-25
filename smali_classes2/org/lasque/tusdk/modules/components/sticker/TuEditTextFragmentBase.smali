.class public abstract Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->isShowResultPreview()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerFactory;->megerStickers(Landroid/graphics/Bitmap;Ljava/util/List;Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public abstract getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end method

.method public abstract getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;
.end method

.method protected handleBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->handleBackButton()V

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getRegionRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getResults(Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->stickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->handleBackButton()V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method protected toggleTextReverse()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->toggleTextReverse()V

    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuEditTextFragmentBase;->getStickerView()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editTextFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
