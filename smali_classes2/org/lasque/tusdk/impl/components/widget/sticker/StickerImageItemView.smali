.class public final Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;
.super Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkImageView;

.field private b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

.field private c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

.field private d:Landroid/view/View$OnClickListener;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mDelegate:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;->onStickerItemViewClose(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->a()V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_impl_component_widget_sticker_image_item_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_cancelButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->b:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-object v0
.end method

.method public getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkImageView;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_imageView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkImageView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkImageView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->a:Lorg/lasque/tusdk/core/view/TuSdkImageView;

    return-object v0
.end method

.method public final getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-nez v0, :cond_0

    const-string v0, "lsq_sticker_turnButton"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->c:Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-object v0
.end method

.method public loadView()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    return-void
.end method

.method protected onLayouted()V
    .locals 5

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->onLayouted()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mCMargin:Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mCMargin:Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mCOffset:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mCOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->initStickerPostion()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setStroke(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->showViewIn(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeImage:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeText:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->showViewIn(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method public setSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getTurnButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeImage:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0, p0, v3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mSticker:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->sizePixies()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->mCSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-wide v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->categoryId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->isLayouted:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->initStickerPostion()V

    :cond_3
    return-void
.end method

.method public setStroke(II)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->f:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->e:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getImageView()Lorg/lasque/tusdk/core/view/TuSdkImageView;

    move-result-object p1

    iget p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->f:I

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->e:I

    invoke-virtual {p1, p2, v0}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setStroke(II)V

    :cond_1
    return-void
.end method
