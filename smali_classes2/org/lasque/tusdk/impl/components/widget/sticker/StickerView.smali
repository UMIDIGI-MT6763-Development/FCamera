.class public final Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;)I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->b:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeImage:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerImageItemView;->getLayoutId()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->b:I

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeText:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getLayoutId()I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->b:I

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->b(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;->canAppendSticker(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->stickersCount()I

    move-result p1

    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxStickers()I

    move-result v1

    if-lt p1, v1, :cond_3

    const-string p1, "lsq_sticker_over_limit"

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxStickers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "lsq_button_done"

    invoke-static {v3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    return v2
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->loadStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$3;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->texts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->dismissRightNow()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->onStickerItemViewSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lsq_sticker_load_unexsit"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;)I

    move-result v0

    invoke-virtual {p0, v0, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->buildView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;)I

    move-result v0

    invoke-virtual {p0, v0, p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->buildView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setStroke(II)V

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setParentFrame(Landroid/graphics/Rect;)V

    invoke-interface {v1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface$StickerItemViewDelegate;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v3

    iget p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    int-to-float p1, p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    instance-of p1, v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    if-eqz p1, :cond_2

    move-object p1, v0

    check-cast p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v4}, Lorg/lasque/tusdk/core/TuSdkContext;->dip2px(F)I

    move-result v4

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, p1

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public appendSticker(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;-><init>()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->px2dip(F)I

    move-result p1

    iput p1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->width:I

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$2;

    invoke-direct {p1, p0, v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public appendSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lsq_sticker_loading"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;->setStatus(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public cancelAllStickerSelected()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;->onCancelAllStickerSelected()V

    return-void
.end method

.method public changeTextAlignment(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->changeTextAlignment(I)V

    return-void
.end method

.method public getCurrentItemViewSelected()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    return-object v0
.end method

.method public getResults(Landroid/graphics/Rect;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    invoke-interface {v2, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->getResult(Landroid/graphics/Rect;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerResult;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    return-void
.end method

.method public onSelectedColorChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->onSelectedColorChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onStickerItemViewClose(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->cancelAllStickerSelected()V

    :cond_1
    return-void
.end method

.method public onStickerItemViewReleased(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V
    .locals 0

    iget-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->e:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;->onStickerItemViewReleased()V

    :cond_1
    return-void
.end method

.method public onStickerItemViewSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->e:Z

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->e:Z

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    if-nez v0, :cond_3

    return-void

    :cond_3
    check-cast p1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getTextView()Lorg/lasque/tusdk/core/view/TuSdkTextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->isNeedReverse()Z

    move-result p1

    invoke-interface {v1, v0, p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;->onStickerItemViewSelected(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->cancelAllStickerSelected()V

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView$StickerViewDelegate;

    return-void
.end method

.method public stickersCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toggleTextReverse()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->toggleTextReverse()V

    return-void
.end method

.method public toggleTextUnderlineStyle()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->toggleTextUnderlineStyle()V

    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerView;->d:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerItemViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->updateText(Ljava/lang/String;Z)V

    return-void
.end method
